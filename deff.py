from tkinter.messagebox import *
import time,os
from tkinter import Image, Label, filedialog
import ex
from pynput.keyboard import Controller


def Download_img(): 
    b=filedialog.askdirectory()
    b=b.replace("/", "\\")
    if(os.system(f'copy /y Dessin.png {b}') == 0):
        showinfo("EasyGio","L'image a bien été téléchargé")
    else:
        showerror("EasyGio","Le systeme ne peut pas trouver le chemin specifie.\n\nVeuillez sélectionner un emplacement de téléchargement valider")    

def IsNumeric(num):
    if(num.isnumeric()):
        return True
    else:
        showinfo("EasyGio","Veuillez entrer un nombre réel")    

def Get3DImg():
    keyboard= Controller()
    time.sleep(5)
    keyboard.press('e')
    keyboard.release('e')

def ReloadImg():
    ex.label2.configure(image=ex.ImageTk.PhotoImage(ex.Image.open("Dessin.png")))

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
    img2 = ex.ImageTk.PhotoImage(ex.Image.open("Dessin.png"))
    ex.label2.configure(image=img2)
    ex.label2.image = img2
    ex.raise_frame(ex.f6)
    
def Execute_fct3(size,check0):
    if(IsNumeric(size)):
        Get3DImg()
        lines = []
        with open('functions.asy','r') as f :
            lines = f.readlines()
        with open('Dessin.asy','w') as d :
            count = 0
            for line in lines:
                count +=1
                if(count >55 and count<64): 
                    if(count == 60):
                        d.write(f'size({size}cm, 0);\n')
                    else:
                        d.write(line)
        f.close()
        d.close() 
        os.system('Dessin.asy')
        if(check0==1):
            time.sleep(1) 
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
                if(count >75 and count<103): 
                    if(count == 83):
                        d.write(f'real a={a};')
                    if(count == 93 or count == 96 or count == 99):
                        d.write(a)
                    else:    
                        d.write(line)
        f.close()
        d.close()                  
        os.system('Dessin.asy')
        if(check==1):
            ex.raise_frame(ex.f6)
            time.sleep(1) 
            img2 = ex.ImageTk.PhotoImage(ex.Image.open("Dessin.png"))
            ex.label2.configure(image=img2)
            ex.label2.image = img2
            ex.raise_frame(ex.f6)    


      