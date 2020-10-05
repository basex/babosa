module Babosa
  module Transliterator
    class Latin < Base
      APPROXIMATIONS = {
        "À" => "A",
        "Á" => "A",
        "Â" => "A",
        "Ã" => "A",
        "Ä" => "A",
        "Å" => "A",
        "Æ" => "Ae",
        "Ç" => "C",
        "È" => "E",
        "É" => "E",
        "Ê" => "E",
        "Ë" => "E",
        "Ì" => "I",
        "Í" => "I",
        "Î" => "I",
        "Ï" => "I",
        "Ð" => "D",
        "Ñ" => "N",
        "Ò" => "O",
        "Ó" => "O",
        "Ô" => "O",
        "Õ" => "O",
        "Ö" => "O",
        "Ø" => "O",
        "Ù" => "U",
        "Ú" => "U",
        "Û" => "U",
        "Ü" => "U",
        "Ý" => "Y",
        "Þ" => "Th",
        "ß" => "ss",
        "à" => "a",
        "á" => "a",
        "â" => "a",
        "ã" => "a",
        "ä" => "a",
        "å" => "a",
        "æ" => "ae",
        "ç" => "c",
        "è" => "e",
        "é" => "e",
        "ê" => "e",
        "ë" => "e",
        "ì" => "i",
        "í" => "i",
        "î" => "i",
        "ï" => "i",
        "ð" => "d",
        "ñ" => "n",
        "ò" => "o",
        "ó" => "o",
        "ô" => "o",
        "õ" => "o",
        "ö" => "o",
        "ø" => "o",
        "ù" => "u",
        "ú" => "u",
        "û" => "u",
        "ü" => "u",
        "ý" => "y",
        "þ" => "th",
        "ÿ" => "y",
        "Ā" => "A",
        "Ă" => "A",
        "Ą" => "A",
        "Ć" => "C",
        "Ĉ" => "C",
        "Ċ" => "C",
        "Č" => "C",
        "Ď" => "D",
        "Đ" => "D",
        "Ē" => "E",
        "Ĕ" => "E",
        "Ė" => "E",
        "Ę" => "E",
        "Ě" => "E",
        "Ĝ" => "G",
        "Ğ" => "G",
        "Ġ" => "G",
        "Ģ" => "G",
        "Ĥ" => "H",
        "Ħ" => "H",
        "Ĩ" => "I",
        "Ī" => "I",
        "Ĭ" => "I",
        "Į" => "I",
        "İ" => "I",
        "Ĳ" => "Ij",
        "Ĵ" => "J",
        "Ķ" => "K",
        "Ĺ" => "L",
        "Ļ" => "L",
        "Ľ" => "L",
        "Ŀ" => "L",
        "Ł" => "L",
        "Ń" => "N",
        "Ņ" => "N",
        "Ň" => "N",
        "Ŋ" => "Ng",
        "Ō" => "O",
        "Ŏ" => "O",
        "Ő" => "O",
        "Œ" => "OE",
        "Ŕ" => "R",
        "Ŗ" => "R",
        "Ř" => "R",
        "Ś" => "S",
        "Ŝ" => "S",
        "Ş" => "S",
        "Š" => "S",
        "Ţ" => "T",
        "Ť" => "T",
        "Ŧ" => "T",
        "Ũ" => "U",
        "Ū" => "U",
        "Ŭ" => "U",
        "Ů" => "U",
        "Ű" => "U",
        "Ų" => "U",
        "Ŵ" => "W",
        "Ŷ" => "Y",
        "Ÿ" => "Y",
        "Ź" => "Z",
        "Ż" => "Z",
        "Ž" => "Z",
        "ā" => "a",
        "ă" => "a",
        "ą" => "a",
        "ć" => "c",
        "ĉ" => "c",
        "ċ" => "c",
        "č" => "c",
        "ď" => "d",
        "đ" => "d",
        "ē" => "e",
        "ĕ" => "e",
        "ė" => "e",
        "ę" => "e",
        "ě" => "e",
        "ĝ" => "g",
        "ğ" => "g",
        "ġ" => "g",
        "ģ" => "g",
        "ĥ" => "h",
        "ħ" => "h",
        "ĩ" => "i",
        "ī" => "i",
        "ĭ" => "i",
        "į" => "i",
        "ı" => "i",
        "ĳ" => "ij",
        "ĵ" => "j",
        "ķ" => "k",
        "ĸ" => "k",
        "ĺ" => "l",
        "ļ" => "l",
        "ľ" => "l",
        "ŀ" => "l",
        "ł" => "l",
        "ń" => "n",
        "ņ" => "n",
        "ň" => "n",
        "ŉ" => "n",
        "ŋ" => "ng",
        "ō" => "o",
        "ŏ" => "o",
        "ő" => "o",
        "œ" => "oe",
        "ŕ" => "r",
        "ŗ" => "r",
        "ř" => "r",
        "ś" => "s",
        "ŝ" => "s",
        "ş" => "s",
        "š" => "s",
        "ţ" => "t",
        "ť" => "t",
        "ŧ" => "t",
        "ũ" => "u",
        "ū" => "u",
        "ŭ" => "u",
        "ů" => "u",
        "ű" => "u",
        "ų" => "u",
        "ŵ" => "w",
        "ŷ" => "y",
        "ž" => "z",
        "ź" => "z",
        "ż" => "z"
      }
    end
  end
end
