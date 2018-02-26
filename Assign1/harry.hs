module VectorSpace  where
    
 type Vector = (Double,Double,Double)

 vecZero :: Vector
 vecZero = (0 ,0 ,0)

 vecScalarProd :: Double -> Vector -> Vector 


 vecScalarProd r  (a,b,c) = (r*a,r*b,r*c)
 

 vecSum :: Vector -> Vector -> Vector
 vecSum (a,b,c) (a',b',c') = (a+a',b+b',c+c') where v = (a,b,c) where v'= (a',b',c')

 vecMagnitude :: Vector -> Double
 vecMagnitude (a,b,c) = sqrt(a*a+b*b+c*c)

 vecD :: Vector -> Vector -> Double
 vecD (a,b,c) (a',b',c') = sqrt((a'-a)**2+(b'-b)**2+(c'-c)**2)
 
 vecF :: Vector -> [Vector] -> [Double]
 vecF x [] = []
 vecF x y = vecD x (head y) : vecF x (tail y)
