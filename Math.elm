module Math exposing (add, addVecteur, carre, colineaire, cube, doubleadd, helloWorld, m, multiplie, n, o, orthogonaux, produitscalaire, resolve)


helloWorld : String
helloWorld =
    "Hello world!"



--Exo 1


add : Int -> Int -> Int
add a b =
    a + b


doubleadd : Int -> Int -> Int -> Int
doubleadd a b c =
    add a b + c



--Exo 2


multiplie : Int -> Int -> Int
multiplie a b =
    a * b


carre : Int -> Int
carre a =
    a * a


cube : Int -> Int
cube a =
    a * a * a



--Exo3


resolve : Float -> Float -> Float -> List Float
resolve a b c =
    let
        d =
            b * b - 4 * a * c
    in
    if d > 0 then
        [ (-b - sqrt d) / (2 * a), (-b + sqrt d) / (2 * a) ]

    else if d == 0 then
        [ -b / 2 * a ]

    else
        []


type alias Vecteur =
    { x : Float
    , y : Float
    }


m =
    { x = 2, y = 5 }


n =
    { x = 4, y = 8 }


o =
    { x = 5, y = 9 }


addVecteur : Vecteur -> Vecteur -> Vecteur
addVecteur v1 v2 =
    { x = v1.x + v2.x, y = v1.y + v2.y }


produitscalaire : Vecteur -> Vecteur -> Float
produitscalaire v1 v2 =
    v1.x * v2.x + v1.y * v2.y


colineaire : Vecteur -> Vecteur -> Bool
colineaire v1 v2 =
    v1.x * v2.y - v1.y * v2.x == 0


orthogonaux : Vecteur -> Vecteur -> Bool
orthogonaux v1 v2 =
    produitscalaire v1 v2 == 0
