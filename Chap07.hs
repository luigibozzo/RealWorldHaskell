-- http://book.realworldhaskell.org/read/io.html

main = do
	args <- getContents
	putStrLn "hello" ++ show args
	let hhh = head $ filter odd [1, 2, 4, 6]
	putStrLn $ show hhh