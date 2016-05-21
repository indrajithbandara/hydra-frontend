module Update exposing (..)

import Models exposing (..)
import Msg exposing (..)


update : Msg -> AppModel -> ( AppModel, Cmd Msg )
update action model =
  case action of

    FetchSucceed init ->
      ( model, Cmd.none )

    FetchFail msg ->
      ( model, Cmd.none )


    LoginUserClick loginType ->
        let
          -- TODO: well, actually do the login proceedure
          user =
            { id = "domenkozar"
            , name = "Domen Kožar"
            , email = "domen@dev.si"
            , roles = []
            , recieveEvaluationErrors = False
            }
        in case loginType of
          Hydra ->
            ( { model | user = Just user }, Cmd.none )
          Google ->
            ( { model | user = Just user }, Cmd.none )

    LogoutUserClick ->
      -- TODO: well, should we cleanup something?
      ( { model | user = Nothing}, Cmd.none )

    PreferencesClick ->
      ( model, Cmd.none )