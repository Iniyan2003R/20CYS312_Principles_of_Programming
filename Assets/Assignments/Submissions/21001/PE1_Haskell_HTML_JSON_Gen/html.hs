
main = putStrLn makeHTML

makeHTML =  exampleHTML "Haskell Generated HTML" "Being the fastest isn’t the best if you’re always wrong - Spiderman "

exampleHTML title content =
  html_ (head_ (meta_ <> title_ title <> style_ design) <> body_ (header_ "/* Input 1: Haskell Generated HTML */" <> main_ (p_ "Content generated by Haskell:" <> div_ "haskell-generated-content" content) <> footer_ "Generated on: Jan 27 , 2024"))

design = "body {background-color:black;color:#f00;font-family:'Action Man',Arial,sans-serif;h1{color:#f03;font-weight:bold; text-align: center;}\
\} #haskell-generated-content {border: 2px solid #999;padding: 15px;} footer {margin-top: 30px;text-align: center;}"

-- | Wraps content in HTML tags
html_ content = "<!DOCTYPE html>" <> "<html lang=\"en\">" <> content <> "</html>"

-- | Wraps content in body tags
body_ content = "<body>" <> content <> "</body>"

-- | Wraps content in head tags
head_ content = "<head>" <> content <> "</head>"

-- | Wraps content in meta tags
meta_ = "<meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">"

-- | Wraps content in title tags
title_ content = "<title>" <> content <> "</title>"

-- | Wraps content in style tags
style_ content = "<style>" <> content <> "</style>"

-- | Wraps content in header tags
header_ content = "<header><h1>" <> content <> "</h1></header>"

-- | Wraps content in main tags
main_ content = "<main>" <> content <> "</main>"

-- | Wraps content in paragraph tags
p_ content = "<p>" <> content <> "</p>"

-- | Wraps content in div tags
div_ id content = "<div id=\"" <> id <> "\">" <> content <> "</div>"

-- | Wraps content in footer tags
footer_ content = "<footer><p>" <> content <> "</p></footer>"

