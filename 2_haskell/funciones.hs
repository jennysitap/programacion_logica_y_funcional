sumar :: Integer -> Integer -> Integer
sumar x y = x + y

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n-1)

menu :: IO()
menu = do
    putStrLn("== Menu :) ==")
    putStrLn("¿que deseas hacer?")
    putStrLn("1) factorial")
    putStrLn("2) salir")
    opcion <- getLine
    case opcion of 
        "1"-> do 
            putStrLn("Introduce el numero: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es: " ++ show(factorial x))
            menu
        "2"-> do
            putStrLn("Adios, vuelve a correr el programa")
        _ -> do
            putStrLn("Opcion no valida :(")
            menu

-- equivalente al public static void
main :: IO ()
main = menu