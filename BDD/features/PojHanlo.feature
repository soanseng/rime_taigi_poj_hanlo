Feature: Rime白話字漢羅輸入法方案ê候選詞規則

  Scenario Outline: 1.完整拼音選字（Ē-sái選漢字a̍h是羅馬字）
    Given 1.Nā詞庫內底有「<jisu>」chit-ê詞，拼音是「<phengim_with_space>」。
     When 1.輸入完整拼音「<phengim_sujip>」。
     Then 1.候選詞內底ē出現字詞「<jisu>」。

    Examples: Queries with keywords
     | jisu | phengim_with_space | phengim_sujip |
     | Pe̍h-ōe-jī | peh8 oe7 ji7 | peh8oe7ji7 |
     | 白話字 | peh8 oe7 ji7 | peh8oe7ji7 |


  Scenario Outline: 2.無聲調拼音選字（Ē-sái選漢字a̍h是羅馬字）
    Given 2.Nā詞庫內底有「<jisu>」chit-ê詞，拼音是「<phengim_with_space>」。
     When 2.輸入無聲調拼音「<phengim_sujip>」。
     Then 2.候選詞內底ē出現字詞「<jisu>」。

    Examples: Queries with keywords
     | jisu | phengim_with_space | phengim_sujip |
     | Pe̍h-ōe-jī | peh8 oe7 ji7 | pehoeji |
     | 白話字 | peh8 oe7 ji7 | pehoeji |


  Scenario Outline: 3.頭1-ê字母選字（Ē-sái選漢字a̍h是羅馬字）
    Given 3.Nā詞庫內底有「<jisu>」chit-ê詞，拼音是「<phengim_with_space>」。
     When 3.輸入拼音頭1-ê字母「<phengim_sujip>」。
     Then 3.候選詞內底ē出現字詞「<jisu>」。

    Examples: Queries with keywords
     | jisu | phengim_with_space | phengim_sujip |
     | Pe̍h-ōe-jī | peh8 oe7 ji7 | poj |
     | 白話字 | peh8 oe7 ji7 | poj |


  Scenario Outline: 4.拼音字母ài完整chiah thang選字（Ē-sái選漢字a̍h是羅馬字）
    Given 4.Nā詞庫內底有「<jisu>」chit-ê詞，拼音是「<phengim_with_space>」。
     When 4.輸入無完整ê拼音字母「<phengim_sujip>」。
     Then 4.候選詞內底bē出現字詞「<jisu>」。

    Examples: Queries with keywords
     | jisu | phengim_with_space | phengim_sujip |
     | Pe̍h-ōe-jī | peh8 oe7 ji7 | peoeji |
     | 白話字 | peh8 oe7 ji7 | peoeji |
