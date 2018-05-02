{-
   Swagger Petstore
   This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.

   OpenAPI spec version: 1.0.0
   Contact: apiteam@swagger.io

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.Tag exposing (Tag, tagDecoder, tagEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   A tag for a pet
-}


type alias Tag =
    { id : Maybe Int
    , name : Maybe String
    }


tagDecoder : Decoder Tag
tagDecoder =
    decode Tag
        |> optional "id" (Decode.nullable Decode.int) Nothing
        |> optional "name" (Decode.nullable Decode.string) Nothing



tagEncoder : Tag -> Encode.Value
tagEncoder model =
    Encode.object
        [ ( "id", withDefault Encode.null (map Encode.int model.id) )
        , ( "name", withDefault Encode.null (map Encode.string model.name) )
        ]


