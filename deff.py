from tkinter.messagebox import *
import time
import os
from ex import *


def Download_img(): 
    os.system('copy /y C:\\Users\Hp\Desktop\EasyGio\Dessin.png C:\\Users\Hp\Downloads')
    showinfo("EasyGio","l'image a bien été téléchargé")
   
def IsNumeric(num):
    if(num.isnumeric()):
        return True
    else:
        showinfo("EasyGio","Veuillez entrer un nombre réel")    

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
    os.system('C:\\Users\\Hp\\Desktop\\EasyGio\\Dessin.asy')

    
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
                    d.write(f'{fct} ;')
                if(count == 40):
                    d.write(f'pair {pts} ;\n')
                else:
                    d.write(line)
    os.system('C:\\Users\\Hp\\Desktop\\EasyGio\\Dessin.asy')            
    
def Execute_fct3(size):
    if(IsNumeric(size)):
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
        os.system('C:\\Users\\Hp\\Desktop\\EasyGio\\Dessin.asy')     

def Execute_fct4(a):
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
                        d.write(f'real a={a};\n')
                    if(count == 93 or count == 96 or count == 99):
                        d.write(a)
                    else:    
                        d.write(line)
        os.system('C:\\Users\\Hp\\Desktop\\EasyGio\\Dessin.asy')


      