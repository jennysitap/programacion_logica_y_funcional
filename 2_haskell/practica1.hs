import System.IO
import Control.Monad (when)

main :: IO ()
main = menu

--Menu
menu :: IO ()
menu = do
    putStrLn("== Menu :) ==")
    putStrLn("¿Qué función desea probar?")
    putStrLn("1) Abs X           -- Valor absoluto de X")
    putStrLn("2) Ceiling x       -- Redondea x hacia arriba al entero más cercano")
    putStrLn("3) Succ x          -- Sucesor de x (el siguiente valor de x)")
    putStrLn("4) Min x y         -- Mínimo entre x y y")
    putStrLn("5) Max x y         -- Máximo entre x y y")
    putStrLn("6) Div x y         -- División entera de x entre y")
    putStrLn("7) Mod x y         -- Residuo de la división entera de x entre y")
    putStrLn("8) Even x          -- Indica si x es par (True o False)")    
    putStrLn("9) Floor x         -- Redondea x hacia abajo al entero más cercano")
    putStrLn("10) Gcd x y        -- Máximo común divisor entre x y y")
    putStrLn("11) Not X          -- Negación lógica de X (True o False)")
    putStrLn("12) Odd x          -- Indica si x es impar (True o False)")    
    putStrLn("13) Signum x       -- Signo de x (-1 si es negativo, 0 si es 0, 1 si es positivo)")
    putStrLn("14) Snd (x,y)      -- Devuelve el segundo elemento del par (x,y)")
    putStrLn("15) Salir")
    opcion <- getLine
    case opcion of 
        "1" -> do
            putStrLn "Ingresa un número:"
            x <- readLn :: IO Int
            print (abs x)
            menu
        "2" -> do
            putStrLn "Ingresa un número decimal:"
            x <- readLn :: IO Double
            print (ceiling x :: Integer)
            menu
        "3" -> do
            putStrLn "Ingresa un número:"
            x <- readLn :: IO Int
            print (succ x)
            menu
        "4" -> do
            putStrLn "Ingresa el primer número:"
            x <- readLn :: IO Int
            putStrLn "Ingresa el segundo número:"
            y <- readLn :: IO Int
            print (min x y)
            menu
        "5" -> do
            putStrLn "Ingresa el primer número:"
            x <- readLn :: IO Int
            putStrLn "Ingresa el segundo número:"
            y <- readLn :: IO Int
            print (max x y)
            menu
        "6" -> do
            putStrLn "Ingresa el dividendo:"
            x <- readLn :: IO Int
            putStrLn "Ingresa el divisor:"
            y <- readLn :: IO Int
            print (div x y)
            menu
        "7" -> do
            putStrLn "Ingresa el número:"
            x <- readLn :: IO Int
            putStrLn "Ingresa el divisor:"
            y <- readLn :: IO Int
            print (mod x y)
            menu
        "8" -> do
            putStrLn "Ingresa un número:"
            x <- readLn :: IO Int
            print (even x)
            menu
        "9" -> do
            putStrLn "Ingresa un número decimal:"
            x <- readLn :: IO Double
            print (floor x :: Integer)
            menu
        "10" -> do
            putStrLn "Ingresa el primer número:"
            x <- readLn :: IO Int
            putStrLn "Ingresa el segundo número:"
            y <- readLn :: IO Int
            print (gcd x y)
            menu
        "11" -> do
            putStrLn "Ingresa True o False:"
            x <- readLn :: IO Bool
            print (not x)
            menu
        "12" -> do
            putStrLn "Ingresa un número:"
            x <- readLn :: IO Int
            print (odd x)
            menu
        "13" -> do
            putStrLn "Ingresa un número:"
            x <- readLn :: IO Int
            print (signum x)
            menu
        "14" -> do
            x <- leerInt "Ingresa el primer valor (x): "
            y <- leerInt "Ingresa el segundo valor (y): "
            print (snd (x, y))
            menu
        "15" -> do
            putStrLn "Adiós, vuelve a correr el programa"
        _ -> do
            putStrLn "Opción no válida :("
            menu

leerInt :: String -> IO Int
leerInt mensaje = do
    putStr mensaje
    hFlush stdout
    readLn

leerDouble :: String -> IO Double
leerDouble mensaje = do
    putStr mensaje
    hFlush stdout
    readLn