{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-missing-fields #-}
{-# OPTIONS_GHC -fno-warn-missing-signatures #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-----------------------------------------------------------------
-- Autogenerated by Thrift
--                                                             --
-- DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
--  @generated
-----------------------------------------------------------------

module TestService where
import Prelude ( Bool(..), Enum, Float, IO, Double, String, Maybe(..),
                 Eq, Show, Ord,
                 concat, error, fromIntegral, fromEnum, length, map,
                 maybe, not, null, otherwise, return, show, toEnum,
                 enumFromTo, Bounded, minBound, maxBound, seq,
                 (.), (&&), (||), (==), (++), ($), (-), (>>=), (>>))

import Control.Applicative (ZipList(..), (<*>))
import Control.DeepSeq
import Control.Exception
import Control.Monad ( liftM, ap, when )
import Data.ByteString.Lazy (ByteString)
import Data.Functor ( (<$>) )
import Data.Hashable
import Data.Int
import Data.Maybe (catMaybes)
import Data.Text.Lazy.Encoding ( decodeUtf8, encodeUtf8 )
import qualified Data.Text.Lazy as LT
import Data.Typeable ( Typeable )
import qualified Data.HashMap.Strict as Map
import qualified Data.HashSet as Set
import qualified Data.Vector as Vector
import Test.QuickCheck.Arbitrary ( Arbitrary(..) )
import Test.QuickCheck ( elements )

import Thrift hiding (ProtocolExnType(..))
import qualified Thrift (ProtocolExnType(..))
import Thrift.Types
import Thrift.Arbitraries


import Module_Types
import qualified TestService_Iface as Iface
-- HELPER FUNCTIONS AND STRUCTURES --

data Init_args = Init_args
  { init_args_int1 :: Int64
  , init_args_int2 :: Int64
  , init_args_int3 :: Int64
  , init_args_int4 :: Int64
  , init_args_int5 :: Int64
  , init_args_int6 :: Int64
  , init_args_int7 :: Int64
  , init_args_int8 :: Int64
  , init_args_int9 :: Int64
  , init_args_int10 :: Int64
  , init_args_int11 :: Int64
  , init_args_int12 :: Int64
  , init_args_int13 :: Int64
  , init_args_int14 :: Int64
  , init_args_int15 :: Int64
  , init_args_int16 :: Int64
  } deriving (Show,Eq,Typeable)
instance Hashable Init_args where
  hashWithSalt salt record = salt   `hashWithSalt` init_args_int1 record   `hashWithSalt` init_args_int2 record   `hashWithSalt` init_args_int3 record   `hashWithSalt` init_args_int4 record   `hashWithSalt` init_args_int5 record   `hashWithSalt` init_args_int6 record   `hashWithSalt` init_args_int7 record   `hashWithSalt` init_args_int8 record   `hashWithSalt` init_args_int9 record   `hashWithSalt` init_args_int10 record   `hashWithSalt` init_args_int11 record   `hashWithSalt` init_args_int12 record   `hashWithSalt` init_args_int13 record   `hashWithSalt` init_args_int14 record   `hashWithSalt` init_args_int15 record   `hashWithSalt` init_args_int16 record  
instance NFData Init_args where
  rnf record =
   rnf (init_args_int1 record) `seq`
   rnf (init_args_int2 record) `seq`
   rnf (init_args_int3 record) `seq`
   rnf (init_args_int4 record) `seq`
   rnf (init_args_int5 record) `seq`
   rnf (init_args_int6 record) `seq`
   rnf (init_args_int7 record) `seq`
   rnf (init_args_int8 record) `seq`
   rnf (init_args_int9 record) `seq`
   rnf (init_args_int10 record) `seq`
   rnf (init_args_int11 record) `seq`
   rnf (init_args_int12 record) `seq`
   rnf (init_args_int13 record) `seq`
   rnf (init_args_int14 record) `seq`
   rnf (init_args_int15 record) `seq`
   rnf (init_args_int16 record) `seq`
   ()
instance Arbitrary Init_args where 
  arbitrary = liftM Init_args (arbitrary)
          `ap`(arbitrary)
          `ap`(arbitrary)
          `ap`(arbitrary)
          `ap`(arbitrary)
          `ap`(arbitrary)
          `ap`(arbitrary)
          `ap`(arbitrary)
          `ap`(arbitrary)
          `ap`(arbitrary)
          `ap`(arbitrary)
          `ap`(arbitrary)
          `ap`(arbitrary)
          `ap`(arbitrary)
          `ap`(arbitrary)
          `ap`(arbitrary)
  shrink obj | obj == default_Init_args = []
             | otherwise = catMaybes
    [ if obj == default_Init_args{init_args_int1 = init_args_int1 obj} then Nothing else Just $ default_Init_args{init_args_int1 = init_args_int1 obj}
    , if obj == default_Init_args{init_args_int2 = init_args_int2 obj} then Nothing else Just $ default_Init_args{init_args_int2 = init_args_int2 obj}
    , if obj == default_Init_args{init_args_int3 = init_args_int3 obj} then Nothing else Just $ default_Init_args{init_args_int3 = init_args_int3 obj}
    , if obj == default_Init_args{init_args_int4 = init_args_int4 obj} then Nothing else Just $ default_Init_args{init_args_int4 = init_args_int4 obj}
    , if obj == default_Init_args{init_args_int5 = init_args_int5 obj} then Nothing else Just $ default_Init_args{init_args_int5 = init_args_int5 obj}
    , if obj == default_Init_args{init_args_int6 = init_args_int6 obj} then Nothing else Just $ default_Init_args{init_args_int6 = init_args_int6 obj}
    , if obj == default_Init_args{init_args_int7 = init_args_int7 obj} then Nothing else Just $ default_Init_args{init_args_int7 = init_args_int7 obj}
    , if obj == default_Init_args{init_args_int8 = init_args_int8 obj} then Nothing else Just $ default_Init_args{init_args_int8 = init_args_int8 obj}
    , if obj == default_Init_args{init_args_int9 = init_args_int9 obj} then Nothing else Just $ default_Init_args{init_args_int9 = init_args_int9 obj}
    , if obj == default_Init_args{init_args_int10 = init_args_int10 obj} then Nothing else Just $ default_Init_args{init_args_int10 = init_args_int10 obj}
    , if obj == default_Init_args{init_args_int11 = init_args_int11 obj} then Nothing else Just $ default_Init_args{init_args_int11 = init_args_int11 obj}
    , if obj == default_Init_args{init_args_int12 = init_args_int12 obj} then Nothing else Just $ default_Init_args{init_args_int12 = init_args_int12 obj}
    , if obj == default_Init_args{init_args_int13 = init_args_int13 obj} then Nothing else Just $ default_Init_args{init_args_int13 = init_args_int13 obj}
    , if obj == default_Init_args{init_args_int14 = init_args_int14 obj} then Nothing else Just $ default_Init_args{init_args_int14 = init_args_int14 obj}
    , if obj == default_Init_args{init_args_int15 = init_args_int15 obj} then Nothing else Just $ default_Init_args{init_args_int15 = init_args_int15 obj}
    , if obj == default_Init_args{init_args_int16 = init_args_int16 obj} then Nothing else Just $ default_Init_args{init_args_int16 = init_args_int16 obj}
    ]
from_Init_args :: Init_args -> ThriftVal
from_Init_args record = TStruct $ Map.fromList $ catMaybes
  [ (\_v2 -> Just (1, ("int1",TI64 _v2))) $ init_args_int1 record
  , (\_v2 -> Just (2, ("int2",TI64 _v2))) $ init_args_int2 record
  , (\_v2 -> Just (3, ("int3",TI64 _v2))) $ init_args_int3 record
  , (\_v2 -> Just (4, ("int4",TI64 _v2))) $ init_args_int4 record
  , (\_v2 -> Just (5, ("int5",TI64 _v2))) $ init_args_int5 record
  , (\_v2 -> Just (6, ("int6",TI64 _v2))) $ init_args_int6 record
  , (\_v2 -> Just (7, ("int7",TI64 _v2))) $ init_args_int7 record
  , (\_v2 -> Just (8, ("int8",TI64 _v2))) $ init_args_int8 record
  , (\_v2 -> Just (9, ("int9",TI64 _v2))) $ init_args_int9 record
  , (\_v2 -> Just (10, ("int10",TI64 _v2))) $ init_args_int10 record
  , (\_v2 -> Just (11, ("int11",TI64 _v2))) $ init_args_int11 record
  , (\_v2 -> Just (12, ("int12",TI64 _v2))) $ init_args_int12 record
  , (\_v2 -> Just (13, ("int13",TI64 _v2))) $ init_args_int13 record
  , (\_v2 -> Just (14, ("int14",TI64 _v2))) $ init_args_int14 record
  , (\_v2 -> Just (15, ("int15",TI64 _v2))) $ init_args_int15 record
  , (\_v2 -> Just (16, ("int16",TI64 _v2))) $ init_args_int16 record
  ]
write_Init_args :: (Protocol p, Transport t) => p t -> Init_args -> IO ()
write_Init_args oprot record = writeVal oprot $ from_Init_args record
encode_Init_args :: (Protocol p, Transport t) => p t -> Init_args -> ByteString
encode_Init_args oprot record = serializeVal oprot $ from_Init_args record
to_Init_args :: ThriftVal -> Init_args
to_Init_args (TStruct fields) = Init_args{
  init_args_int1 = maybe (init_args_int1 default_Init_args) (\(_,_val4) -> (case _val4 of {TI64 _val5 -> _val5; _ -> error "wrong type"})) (Map.lookup (1) fields),
  init_args_int2 = maybe (init_args_int2 default_Init_args) (\(_,_val4) -> (case _val4 of {TI64 _val6 -> _val6; _ -> error "wrong type"})) (Map.lookup (2) fields),
  init_args_int3 = maybe (init_args_int3 default_Init_args) (\(_,_val4) -> (case _val4 of {TI64 _val7 -> _val7; _ -> error "wrong type"})) (Map.lookup (3) fields),
  init_args_int4 = maybe (init_args_int4 default_Init_args) (\(_,_val4) -> (case _val4 of {TI64 _val8 -> _val8; _ -> error "wrong type"})) (Map.lookup (4) fields),
  init_args_int5 = maybe (init_args_int5 default_Init_args) (\(_,_val4) -> (case _val4 of {TI64 _val9 -> _val9; _ -> error "wrong type"})) (Map.lookup (5) fields),
  init_args_int6 = maybe (init_args_int6 default_Init_args) (\(_,_val4) -> (case _val4 of {TI64 _val10 -> _val10; _ -> error "wrong type"})) (Map.lookup (6) fields),
  init_args_int7 = maybe (init_args_int7 default_Init_args) (\(_,_val4) -> (case _val4 of {TI64 _val11 -> _val11; _ -> error "wrong type"})) (Map.lookup (7) fields),
  init_args_int8 = maybe (init_args_int8 default_Init_args) (\(_,_val4) -> (case _val4 of {TI64 _val12 -> _val12; _ -> error "wrong type"})) (Map.lookup (8) fields),
  init_args_int9 = maybe (init_args_int9 default_Init_args) (\(_,_val4) -> (case _val4 of {TI64 _val13 -> _val13; _ -> error "wrong type"})) (Map.lookup (9) fields),
  init_args_int10 = maybe (init_args_int10 default_Init_args) (\(_,_val4) -> (case _val4 of {TI64 _val14 -> _val14; _ -> error "wrong type"})) (Map.lookup (10) fields),
  init_args_int11 = maybe (init_args_int11 default_Init_args) (\(_,_val4) -> (case _val4 of {TI64 _val15 -> _val15; _ -> error "wrong type"})) (Map.lookup (11) fields),
  init_args_int12 = maybe (init_args_int12 default_Init_args) (\(_,_val4) -> (case _val4 of {TI64 _val16 -> _val16; _ -> error "wrong type"})) (Map.lookup (12) fields),
  init_args_int13 = maybe (init_args_int13 default_Init_args) (\(_,_val4) -> (case _val4 of {TI64 _val17 -> _val17; _ -> error "wrong type"})) (Map.lookup (13) fields),
  init_args_int14 = maybe (init_args_int14 default_Init_args) (\(_,_val4) -> (case _val4 of {TI64 _val18 -> _val18; _ -> error "wrong type"})) (Map.lookup (14) fields),
  init_args_int15 = maybe (init_args_int15 default_Init_args) (\(_,_val4) -> (case _val4 of {TI64 _val19 -> _val19; _ -> error "wrong type"})) (Map.lookup (15) fields),
  init_args_int16 = maybe (init_args_int16 default_Init_args) (\(_,_val4) -> (case _val4 of {TI64 _val20 -> _val20; _ -> error "wrong type"})) (Map.lookup (16) fields)
  }
to_Init_args _ = error "not a struct"
read_Init_args :: (Transport t, Protocol p) => p t -> IO Init_args
read_Init_args iprot = to_Init_args <$> readVal iprot (T_STRUCT typemap_Init_args)
decode_Init_args :: (Protocol p, Transport t) => p t -> ByteString -> Init_args
decode_Init_args iprot bs = to_Init_args $ deserializeVal iprot (T_STRUCT typemap_Init_args) bs
typemap_Init_args :: TypeMap
typemap_Init_args = Map.fromList [("int1",(1,T_I64)),("int2",(2,T_I64)),("int3",(3,T_I64)),("int4",(4,T_I64)),("int5",(5,T_I64)),("int6",(6,T_I64)),("int7",(7,T_I64)),("int8",(8,T_I64)),("int9",(9,T_I64)),("int10",(10,T_I64)),("int11",(11,T_I64)),("int12",(12,T_I64)),("int13",(13,T_I64)),("int14",(14,T_I64)),("int15",(15,T_I64)),("int16",(16,T_I64))]
default_Init_args :: Init_args
default_Init_args = Init_args{
  init_args_int1 = 0,
  init_args_int2 = 0,
  init_args_int3 = 0,
  init_args_int4 = 0,
  init_args_int5 = 0,
  init_args_int6 = 0,
  init_args_int7 = 0,
  init_args_int8 = 0,
  init_args_int9 = 0,
  init_args_int10 = 0,
  init_args_int11 = 0,
  init_args_int12 = 0,
  init_args_int13 = 0,
  init_args_int14 = 0,
  init_args_int15 = 0,
  init_args_int16 = 0}
data Init_result = Init_result
  { init_result_success :: Int64
  } deriving (Show,Eq,Typeable)
instance Hashable Init_result where
  hashWithSalt salt record = salt   `hashWithSalt` init_result_success record  
instance NFData Init_result where
  rnf record =
   rnf (init_result_success record) `seq`
   ()
instance Arbitrary Init_result where 
  arbitrary = liftM Init_result (arbitrary)
  shrink obj | obj == default_Init_result = []
             | otherwise = catMaybes
    [ if obj == default_Init_result{init_result_success = init_result_success obj} then Nothing else Just $ default_Init_result{init_result_success = init_result_success obj}
    ]
from_Init_result :: Init_result -> ThriftVal
from_Init_result record = TStruct $ Map.fromList $ catMaybes
  [ (\_v23 -> Just (0, ("success",TI64 _v23))) $ init_result_success record
  ]
write_Init_result :: (Protocol p, Transport t) => p t -> Init_result -> IO ()
write_Init_result oprot record = writeVal oprot $ from_Init_result record
encode_Init_result :: (Protocol p, Transport t) => p t -> Init_result -> ByteString
encode_Init_result oprot record = serializeVal oprot $ from_Init_result record
to_Init_result :: ThriftVal -> Init_result
to_Init_result (TStruct fields) = Init_result{
  init_result_success = maybe (init_result_success default_Init_result) (\(_,_val25) -> (case _val25 of {TI64 _val26 -> _val26; _ -> error "wrong type"})) (Map.lookup (0) fields)
  }
to_Init_result _ = error "not a struct"
read_Init_result :: (Transport t, Protocol p) => p t -> IO Init_result
read_Init_result iprot = to_Init_result <$> readVal iprot (T_STRUCT typemap_Init_result)
decode_Init_result :: (Protocol p, Transport t) => p t -> ByteString -> Init_result
decode_Init_result iprot bs = to_Init_result $ deserializeVal iprot (T_STRUCT typemap_Init_result) bs
typemap_Init_result :: TypeMap
typemap_Init_result = Map.fromList [("success",(0,T_I64))]
default_Init_result :: Init_result
default_Init_result = Init_result{
  init_result_success = 0}
process_init (seqid, iprot, oprot, handler) = do
  args <- read_Init_args iprot
  (Control.Exception.catch
    (do
      val <- Iface.init handler (init_args_int1 args) (init_args_int2 args) (init_args_int3 args) (init_args_int4 args) (init_args_int5 args) (init_args_int6 args) (init_args_int7 args) (init_args_int8 args) (init_args_int9 args) (init_args_int10 args) (init_args_int11 args) (init_args_int12 args) (init_args_int13 args) (init_args_int14 args) (init_args_int15 args) (init_args_int16 args)
      let res = default_Init_result{init_result_success = val}
      writeMessage oprot ("init", M_REPLY, seqid) $
        write_Init_result oprot res
      tFlush (getTransport oprot))
    ((\_ -> do
      writeMessage oprot ("init", M_EXCEPTION, seqid) $
        writeAppExn oprot (AppExn AE_UNKNOWN "")
      tFlush (getTransport oprot)) :: SomeException -> IO ()))
proc_ handler (iprot,oprot) (name,typ,seqid) = case name of
  "init" -> process_init (seqid,iprot,oprot,handler)
  _ -> do
    _ <- readVal iprot (T_STRUCT Map.empty)
    writeMessage oprot (name,M_EXCEPTION,seqid) $
      writeAppExn oprot (AppExn AE_UNKNOWN_METHOD ("Unknown function " ++ LT.unpack name))
    tFlush (getTransport oprot)
process handler (iprot, oprot) =
  readMessage iprot (proc_ handler (iprot,oprot)) >> return True
