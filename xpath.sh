<div id="test3">我左青龙，<span id="tiger">右白虎，<ul>上朱雀，<li>下玄武。</li></ul>老牛在当中，</span>龙头在胸口。<div>

data = selector.xpath('//div[@id="test3"]')
info = data.xpath('string(.)').extract()[0]

这样，就可以把“我左青龙，右白虎，上朱雀，下玄武。老牛在当中，龙头在胸口”整个句子提取出来，赋值给info变量。


常用定位语句实例

1. //NODE[not(@class)] 所有节点名为node,且不包含class属性的节点

2. //NODE[@class and @id] 所有节点名为node,且同时包含class属性和id属性的节点

3. //NODE[contains(text(),substring] 所有节点名为node,且其文本中包含substring的节点

//A[contains(text(),\"下一页\")] 所有包含“下一页”字符串的超链接节点

//A[contains(@title,"文章标题")] 所有其title属性中包含“文章标题”字符串的超链接节点

4. //NODE[@id="myid"]/text() 节点名为node,且属性id为myid的节点的所有直接text子节点

5. BOOK[author/degree] 所有包含author节点同时该author节点至少含有一个的degree孩子节点的book节点

6. AUTHOR[.="Matthew Bob"] 所有值为“Matthew Bob”的author节点

7. //*[count(BBB)=2] 所有包含两个BBB孩子节点的节点

8. //*[count(*)=2] 所有包含两个孩子节点的节点

9. //*[name()='BBB'] 所有名字为BBB的节点，等同于//BBB

10. //*[starts-with(name(),'B')] 所有名字开头为字母B的节点

11. //*[contains(name(),'C')] 所有名字中包含字母C的节点

12. //*[string-length(name()) = 3] 名字长度为3个字母的节点

13. //CCC | //BBB 所有CCC节点或BBB节点

14. /child::AAA 等价于/AAA

15. //CCC/descendant::* 所有以CCC为其祖先的节点

16. //DDD/parent::* DDD节点的所有父节点

17. //BBB[position() mod 2 = 0] 偶数位置的BBB节点

18. AUTHOR[not(last-name = "Bob")] 所有不包含元素last-name的值为Bob的节点

19. P/text()[2] 当前上下文节点中的P节点的第二个文本节点

20. ancestor::BOOK[1] 离当前上下文节点最近的book祖先节点

21. //A[text()="next"] 锚文本内容等于next的A节点



