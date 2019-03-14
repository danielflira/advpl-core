
Function PswAdmin(cUser, cPsw, cId)
    Local cBlock  := ""
    Local cOutput := "" // http://www.patorjk.com/software/taag/#p=display&f=Rectangles&t=DEVELOPMENT
    Local nBlock  := 1

    // Banner to display
    cOutput += " ____  _____ _____ _____ __    _____ _____ _____ _____ _____ _____ " + Chr(13) + Chr(10)
    cOutput += "|    \|   __|  |  |   __|  |  |     |  _  |     |   __|   | |_   _|" + Chr(13) + Chr(10)
    cOutput += "|  |  |   __|  |  |   __|  |__|  |  |   __| | | |   __| | | | | |  " + Chr(13) + Chr(10)
    cOutput += "|____/|_____|\___/|_____|_____|_____|__|  |_|_|_|_____|_|___| |_|  " + Chr(13) + Chr(10)

    // Get global and local configuration
    cBlock += GetPvProfString("GENERAL", "DEVELOPMENT", "", GetSrvIniName())
    cBlock += GetPvProfString(GetEnvServer(), "DEVELOPMENT", "", GetSrvIniName())

    // Prepare message to show
    If cBlock == ""
        cOutput := Chr(27) + "[1;31m" + cOutput + Chr(27)+"[0m"
        nBlock := 1
    Else
        cOutput := Chr(27) + "[1;34m" + cOutput + Chr(27)+"[0m"
        nBlock := 0
    End

    // Show message
    ConOut(cOutput)

    // == 0 - To allow
    // != 0 - To Block
Return nBlock
