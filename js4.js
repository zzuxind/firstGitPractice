// 逆序输出字符串
function reverString(message){
    
    return message.split("").reverse().join("");
}
console.log(reverString("javascript"));


// 判断回文
function palindrome(message){
    return message==reverString(message)?true:false;
}
console.log(palindrome("hello"));
console.log(palindrome("abcba"));


// 排序输出
function alphabetSort(message) {
    return message.split("").sort().join("");
}
console.log(alphabetSort("hello"));