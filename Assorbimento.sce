clc;
// calcolo dell'assorbimento del materiale
// Variabili
Wf=0;
Ww=0;

// Input peso Cotto
Wf=x_dialog('Firing weight: ','')
controllo=isnum(Wf);
while controllo==%f do
    controllo='';
    Wf=x_dialog('Firing weight: ','');
    controllo=isnum(Wf);
end
// input Peso Umido
Ww=x_dialog('Wet weight: ','')
controllo=isnum(Ww);
while controllo==%f do
    controllo='';
    Ww=x_dialog('Wet weight: ','');
    controllo=isnum(Ww);
end

//Calcolo
Wfn=strtod(Wf);
Wwn=strtod(Ww);

Assorbimento=((Wwn - Wfn)/Wfn)*100;
output=string(Assorbimento);
messagebox(string(Assorbimento), 'Assorbimento Materiale');
