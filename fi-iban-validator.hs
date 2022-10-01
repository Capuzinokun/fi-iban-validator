validateLength :: String -> Bool
validateLength string
    | null string = False
    | length string == 18 = validateCountryCode string
    | otherwise = False

--

isAscii :: Char -> Bool
isAscii c = c >= '0' && c <= '9'

--

onlyDigits :: String -> Bool
onlyDigits substring 
    | (all isAscii substring) = divisionCheck ((drop 2 substring) ++ "1518" ++ (take 2 substring))
    | otherwise = False

--

divisionCheck :: String -> Bool
divisionCheck convertedString
    | read convertedString `mod` 97 == 1 = True
    | otherwise = False

--

validateCountryCode :: String -> Bool
validateCountryCode string
    | take 2 (string) == "FI" = onlyDigits (drop 2 string)
    | otherwise = False

--

validate :: String -> Bool
validate = validateLength