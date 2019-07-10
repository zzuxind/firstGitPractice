<<<<<<< HEAD
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
=======
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
>>>>>>> 7646f8061bcfefec3b1a6ef1f98b332585b01d65
console.log(alphabetSort("hello"));