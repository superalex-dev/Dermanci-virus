#SingleInstance force
DriveGet, ListOfDrives, List

Loop, %ListOfDrives%
{
    DriveGet, Type, Type, %A_Index%
    If Type = USB
    {
        Drive := A_Index
        break
    }
}

Drive := SubStr(Drive, 1, 2)
FileAppend, neka ti pokaja tainata na jivota, %Drive%:\test.txt
Send, neka ti pokaja tainata na jivota

Sleep, 5000
Run, https://www.youtube.com/watch?v=XE1KQ5HyGWw&t=6m37s
