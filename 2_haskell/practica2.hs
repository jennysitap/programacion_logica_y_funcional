import System.IO
import Control.Monad (when)

main :: IO ()
main = menu

--Promedio
promedio :: Float -> Float -> Float -> Float -> Float
promedio a b c d = (a + b + c + d) / 4
 
--Suma
monedas :: Int -> Int -> Int -> Int -> Float
monedas a b c d = fromIntegral (a*1 + b*5 + c*10 + d*50)
 
--Volumen
volumenEsfera :: Float -> Float
volumenEsfera r = (4/3) * pi * r^3
 
--Ver si a, b y c son iguales
iguales :: Int -> Int -> Int -> Bool
iguales a b c = a == b && b == c
 
--Ver si a, b y c son diferentes
diferentes :: Int -> Int -> Int -> Bool
diferentes a b c = a /= b && b /= c && a /= c
 
--Precio final
precioFinal :: Float -> Float
precioFinal x
    | x > 1000  = x * 0.6    -- 40%
    | x > 500   = x * 0.7    -- 30%
    | x > 100   = x * 0.9    -- 10%
    | otherwise = x
 
--Última cifra
ultimaCifra :: Int -> Int
ultimaCifra n = n `mod` 10


menu :: IO ()
menu = do
    putStrLn("== Menu :) ==")
    putStrLn("¿Qué función desea probar?")
    putStrLn("1) Promedio de 4 numeros")
    putStrLn("2) Funcion sumar monedas")
    putStrLn("3) Volumen de una esfera")
    putStrLn("4) Verificar si a, b y c son iguales")
    putStrLn("5) Verificar si a, b y c son diferentes")
    putStrLn("6) Precio final de compra")
    putStrLn("7) Devolver la ultima cifra de un numero")
    putStrLn("8) Salir")
    opcion <- getLine
    case opcion of 
        "1" -> do            
            --Definir una función que imprima el promedio de 4 números.
            putStrLn "Ingresa 4 números:"
            a <- readLn :: IO Float
            b <- readLn :: IO Float
            c <- readLn :: IO Float
            d <- readLn :: IO Float
            print (promedio a b c d)
            menu
        "2" -> do
            --Definir una función que sume monedas donde a=$1.00, b=$5.00, c=$10.00, d=$50.00. 
            --Ejemplo: si a=1 b=2 c=3 d=1 daría como resultado $91.00
            putStrLn "Ingresa la cantidad de monedas a=$1, b=$5, c=$10, d=$50:"
            a <- readLn :: IO Int
            b <- readLn :: IO Int
            c <- readLn :: IO Int
            d <- readLn :: IO Int
            print (monedas a b c d)
            menu
        "3" -> do
            --Definir una función que calcule el volumen de una esfera (usar constante PI de Haskell)
            putStrLn "Ingresa el radio de la esfera:"
            r <- readLn :: IO Float
            print (volumenEsfera r)
            menu
        "4" -> do
            --Definir una función que verifique si a, b y c son iguales. Ejemplo 10 2 3 => False.
            putStrLn "Ingresa tres números:"
            a <- readLn :: IO Int
            b <- readLn :: IO Int
            c <- readLn :: IO Int
            print (iguales a b c)
            menu
        "5" -> do
            --Definir una función que verifique si a, b y c son diferentes. Ejemplo 10 2 3 => True.
            putStrLn "Ingresa tres números:"
            a <- readLn :: IO Int
            b <- readLn :: IO Int
            c <- readLn :: IO Int
            print (diferentes a b c)
            menu
        "6" -> do
            --Definir una función que imprima el precio final de compra con las siguientes condiciones de descuento:
            --Si compra mas de $100.00 tendrá descuento del 10%.
            --Si compra mas de $500.00 tendrá descuento del 30%.
            --Si compra mas de $1000.00 tendrá descuento del 40%.
            putStrLn "Ingresa el precio de la compra:"
            x <- readLn :: IO Float
            print (precioFinal x)
            menu
        "7" -> do
            --Definir una función que devuelva la última cifra de un número. Ejemplo: 512 devuelve el 2
            putStrLn "Ingresa un número:"
            n <- readLn :: IO Int
            print (ultimaCifra n)
            menu
        "8" -> do
            --Salir
            putStrLn "Adiós, vuelve a correr el programa"
        _ -> do
            --Si pone una opcion mal
            putStrLn "Opción no válida :("
            menu


