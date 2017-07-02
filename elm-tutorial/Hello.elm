module Hello exposing (..)  -- module declaration. (..) means we're exposing everything in the module

import Html exposing (text) -- import Html module, specifically import "text" into the current namespace

main =
    text "Hello"            -- frontend apps in Elm start with main, which is a function that returns an element (text in this case) to draw into the page
