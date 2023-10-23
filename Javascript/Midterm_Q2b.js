const fs = require('fs')
const writeStrings = (arr, filename) => {
    len = 0
    result = ""
    for (let i = 0; i < arr.length; i++) {
        len = len + arr[i].length
        console.log(arr[i])
        if (i > 0) {
            result = result + "\n"
        }
            result = result + arr[i]
    }
    fs.writeFileSync(filename, result)
    return len
}
