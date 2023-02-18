#!/usr/bin/env python3
import cv2 as cv

# Se lee la imagen
img = cv.imread("baboon.png")

while True:
    # Se muestra la imagen
    cv.imshow("Baboon", img)

    # Leemos del teclado
    key = cv.waitKey(1000)
    # Verificamos si la ventana es visible
    win =  cv.getWindowProperty('Baboon', cv.WND_PROP_VISIBLE)

    # si se preciona la tecla ESC
    if key == 27 or win < 1.0:
        break

cv.destroyAllWindows()
