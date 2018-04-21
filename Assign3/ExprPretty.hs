module ExprPretty where

import ExprType

combine :: String -> String
combine ss = "(" ++ ss ++ ")"

instance Show a => Show (Expr a) where
  show (Add e1 e2) = combine (show e1) ++ " !+ " ++ combine (show e2)
  show (Mult e1 e2) = combine (show e1) ++ " !* " ++ combine (show e2)
  show (Var ss) = combine $ "var \"" ++ ss ++ "\""
  show (Const x) = combine $ "val " ++ show x
  show (Cos ss) = combine $ "cos " ++ show ss
  show (Sin ss) = combine $ "sin " ++ show ss
  show (Log ss) = combine $ "log " ++ show ss
  show (Exp ss) = combine $ "exp " ++ show ss
  show (Ln ss) = combine $ "ln " ++ show ss
