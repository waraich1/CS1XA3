module ExprType where

import Data.List

data Expr a = Add (Expr a) (Expr a)
            | Mult (Expr a) (Expr a)
            | Cos (Expr a) -- ^ This constructor represents the cosine of an expression of type 'Expr a'
            | Sin (Expr a) -- ^ This constructor represents the sin of an expression of type 'Expr a'
            | Exp (Expr a) (Expr a) -- ^ This constructor represents the exponent of two expressions of type 'Expr a'. First expression to the power of second expression.
            | NatExp (Expr a) -- ^ This constructor represents the Natural exponent of an expression of type 'Expr a'
            | Ln (Expr a) -- ^  This constructor represents the Natural Logarithm of an expression of type 'Expr a'
            | Const a
            | Var String
  deriving Eq


getVars :: Expr a -> [String]
getVars (Add e1 e2)  = getVars e1 `union` getVars e2
getVars (Mult e1 e2) = getVars e1 `union` getVars e2
getVars (Cos e1) = getVars e1
getVars (Sin e1) = getVars e1
getVars (Ln e1) = getVars e1
getVars (NatExp e1) = getVars e1
getVars (Exp e1 e2) = getVars e1 ++ getVars e2
getVars (Const _)    = []
getVars (Var ident)  = [ident]
