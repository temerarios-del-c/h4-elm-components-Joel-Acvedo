module Helper exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)



-- Puedes usar una definición como la siguiente para probar y visualizar tus resultados, solo debes definir "headers" y "hyperlink"
--main : Html.Html msg
--main =
--    Html.div [] [ headers "Titulos", hyperlink "https://upa.edu.mx" "My School" ]
-- Create a function "joinWords" that receive two strings and join them (++)


joinWords : String -> String -> String
joinWords word1 word2 =
    word1 ++ word2



-- Create a function "isUpperChars" that receives a List of Char we will transform each element with the function (Char.isUpper : Char -> Bool) and generate a new list, sound familiar?)


isUpperChars : List Char -> List Bool
isUpperChars list =
    List.map Char.isUpper list



-- Finally we want to expand our previous function and create "evalChars" which receive any function with type (Char -> Bool) and returns a new list with each element transformed


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars list funTrans =
    List.map funTrans list



-- headers component
-- Create a component "headers" that given a String parameter, generates the following html code:
-- <div>
--   <h1>{{param}}</h1>
--   <h2>{{param}}</h2>
--   <h3>{{param}}</h3>
--   <h4>{{param}}</h4>
--   <h5>{{param}}</h5>
--   <h6>{{param}}</h6>
-- </div>
-- Componente headers corregido


headers : String -> Html msg
headers param =
    div []
        [ h1 [] [ text param ]
        , h2 [] [ text param ]
        , h3 [] [ text param ]
        , h4 [] [ text param ]
        , h5 [] [ text param ]
        , h6 [] [ text param ]
        ]



-- hyperlink component
--     Create a component "hyperlink" that receives two Strings
--         The url
--         The text That produces the following html:
-- <a href="{{url}}">{{text}}</a>


hyperlink : String -> String -> Html msg
hyperlink url texto =
    a [ href url ] [ text texto ]
