

exports.encrypt = (string, secret = 1) ->
  result = ''
  for char in string
    code = char.charCodeAt(0)
    if code <= 41
      result += char
    else
      result += String.fromCharCode(code - secret)

  return result


exports.decrypt = (string, secret = 1) ->
  char currentkey = 1  //for example
   convertKey(str) {
    char o_text = str;
    char o_letters = o_text.split("");
    char alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
    char c_text="", _x = "";
    for (x in o_letters) {
        if (currentkey > 0) {
            _x = alphabet[(alphabet.indexOf(o_letters[x]) - currentkey) % alphabet.length]
        } else {
            _x = alphabet[(alphabet.indexOf(o_letters[x]) + (26 + currentkey)) % alphabet.length]
        }
        c_text = c_text + _x;
    }
    return c_text;
}

alert(convertKey('hello there'));
  return 'fix me'
