module Main exposing (..)

import Browser
import Day1 exposing (Day1)
import Day2 exposing (Day2)
import Html exposing (Html, div, h1, p, text)


main =
    Browser.sandbox { init = init, update = update, view = view }


type alias Model =
    { day1 : Day1
    , day2 : Day2
    }


init : Model
init =
    { day1 =
        { answer = "" }
    , day2 =
        { answer = ""
        , test1 = ""
        , answerPart2 = Day2.solvePart2
        }
    }


update : () -> Model -> Model
update _ model =
    model


view : Model -> Html ()
view model =
    div []
        [ h1 []
            [ text "day 1" ]
        , p [] [ text model.day1.answer ]
        , h1 []
            [ text "day 2" ]
        , p [] [ text model.day2.answer ]
        , p [] [ text model.day2.test1 ]
        , p [] [ text model.day2.answerPart2 ]
        ]
