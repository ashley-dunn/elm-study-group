module Map exposing (..)

map : (a -> b) -> List a -> List b
map func list =
    case list of
        [] -> [] -- is there a better way to do this? returning list throws a type error
        a::rest ->
            func a :: map func rest

test : Bool
test = testMapEmptyList
    && testMapSingletonList
    && testMapMultipleList

addOne : Int -> Int
addOne x = x + 1

testMapEmptyList : Bool
testMapEmptyList = (map addOne []) == []

testMapSingletonList : Bool
testMapSingletonList = (map addOne [1]) == [2]

testMapMultipleList : Bool
testMapMultipleList = (map addOne [1, 2, 3]) == [2, 3, 4]

