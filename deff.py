from tkinter.messagebox import *
import time,os
from tkinter import filedialog
import ex   

def Download_img(): 
    b=filedialog.askdirectory()
    b=b.replace("/", "\\")
    if(os.system(f'copy /y Dessin.png {b}') == 0):
        showinfo("EasyGio","L'image a bien été téléchargé")
    else:
        showerror("EasyGio","Le système ne peut pas trouver le chemin spécifie.\n\nVeuillez sélectionner un emplacement de téléchargement valider")    

def IsNumeric(num):
    if(num.isnumeric() and num!='0'):
        return True
    else:
        showerror("EasyGio","Veuillez entrer un nombre entier")    

def Execute_fct1(fct1):
    lines = []
    with open('functions.asy','r') as f :
        lines = f.readlines()
    with open('Dessin.asy','w') as d :
        count = 0
        for line in lines:
            count +=1
            if(count < 26): 
                if(count == 6 or count == 21):
                    d.write(fct1)
                else:
                    d.write(line)
    f.close()
    d.close()
    if( os.system('Dessin.asy') != 0 ):
        showerror("EasyGio","Press any key to continue")
        ex.raise_frame(ex.f5)     
    time.sleep(1) 
    img2 = ex.ImageTk.PhotoImage(ex.Image.open("Dessin.png"))
    ex.label2.configure(image=img2)
    ex.label2.image = img2
    ex.raise_frame(ex.f6)

def Execute_fct2(fct,pts):
    lines = []
    with open('functions.asy','r') as f :
        lines = f.readlines()
    with open('Dessin.asy','w') as d :
        count = 0
        for line in lines:
            count +=1
            if(count >26 and count<44): 
                if(count == 38 ):
                    d.write(f'{fct};')
                if(count == 40):
                    d.write(f'pair {pts} ;\n')
                else:
                    d.write(line)
    f.close()
    d.close()                  
    os.system('Dessin.asy')
    time.sleep(1) 
    img2 = ex.ImageTk.PhotoImage(ex.Image.open("Dessin.png").resize((250,250),ex.Image.ANTIALIAS))
    ex.label2.configure(image=img2)
    ex.label2.image = img2
    ex.raise_frame(ex.f6)
    
def Execute_fct3(check0,check1):
        lines = []
        with open('functions.asy','r') as f :
            lines = f.readlines()
        with open('Dessin.asy','w') as d :
            count = 0
            for line in lines:
                count +=1
                if(check0 == 1): 
                    if(count <55 and count > 43):
                        d.write(line)
                else:
                    if(count <64 and count > 54):
                        d.write(line)       
        f.close()
        d.close() 
        os.system('Dessin.asy')
        if(check1==1):
            time.sleep(1)
            if(check0 ==0):
                img2 = ex.ImageTk.PhotoImage(ex.Image.open("Dessin.png").resize((250,250),ex.Image.ANTIALIAS))
            else: 
                img2 = ex.ImageTk.PhotoImage(ex.Image.open("Dessin.png"))
            ex.label2.configure(image=img2)
            ex.label2.image = img2
            ex.raise_frame(ex.f6)

def Execute_fct4(a,check):
    if(IsNumeric(a)):
        lines = []
        with open('functions.asy','r') as f :
            lines = f.readlines()
        with open('Dessin.asy','w') as d :
            count = 0
            for line in lines:
                count +=1
                if(count >64 and count<90): 
                    if(count == 70):
                        d.write(f'real a={a};')
                    if(count == 80 or count == 83 or count == 86):
                        d.write(a)
                    else:    
                        d.write(line)
        f.close()
        d.close()                  
        os.system('Dessin.asy')
        if(check==1):
            time.sleep(1) 
            img2 = ex.ImageTk.PhotoImage(ex.Image.open("Dessin.png"))
            ex.label2.configure(image=img2)
            ex.label2.image = img2
            ex.raise_frame(ex.f6)    

def Execute_fct5(val):
    lines = []
    with open('functions.asy','r') as f :
        lines = f.readlines()
    with open('Dessin.asy','w') as d :
        count = 0
        for line in lines:
            count +=1
            if(val == 10 and count <105 and count>90): 
                d.write(line)
            if(val == 11 and count <119 and count>104):
                d.write(line)
                ex.raise_frame(ex.f6)
            if(val == 20 and count <130 and count>118):
                d.write(line)
            if(val == 21 and count <141 and count>129):
                d.write(line)
                ex.raise_frame(ex.f6)
            if(val == 30 and count <160 and count>140):
                d.write(line) 
            if(val == 31 and count <177 and count>159):
                d.write(line)      
                ex.raise_frame(ex.f6)                                
    f.close()
    d.close()
    os.system('Dessin.asy')
    time.sleep(1) 
    img2 = ex.ImageTk.PhotoImage(ex.Image.open("Dessin.png"))
    ex.label2.configure(image=img2)
    ex.label2.image = img2
    
   
      