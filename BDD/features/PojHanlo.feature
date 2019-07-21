Feature: Rime白話字漢羅輸入法方案ê候選詞規則

  Scenario Outline: 1.完整拼音選字（Ē-sái選漢字a̍h是羅馬字）
    Given 1.Nā詞庫內底有「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 1.輸入完整拼音字母（無空白）。
     Then 1.候選詞內底ē出現字詞「<jisu>」。

    Examples: 試驗範例
     | jisu | phengim_with_space |
     | Pe̍h-ōe-jī | peh8 oe7 ji7 |
     | 白話字 | peh8 oe7 ji7 |


  Scenario Outline: 2.無聲調拼音選字（Ē-sái選漢字a̍h是羅馬字）
    Given 2.Nā詞庫內底有「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 2.輸入無聲調拼音字母（無空白）。
     Then 2.候選詞內底ē出現字詞「<jisu>」。

    Examples: 試驗範例
     | jisu | phengim_with_space |
     | Pe̍h-ōe-jī | peh8 oe7 ji7 |
     | 白話字 | peh8 oe7 ji7 |


  Scenario Outline: 3.頭1-ê字母選字（Ē-sái選漢字a̍h是羅馬字）
    Given 3.Nā詞庫內底有「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 3.Kan-na輸入拼音頭1-ê字母。
     Then 3.候選詞內底ē出現字詞「<jisu>」。

    Examples: 試驗範例
     | jisu | phengim_with_space |
     | Pe̍h-ōe-jī | peh8 oe7 ji7 |
     | 白話字 | peh8 oe7 ji7 |


  Scenario Outline: 4.拼音字母ài完整chiah thang選字（Ē-sái選漢字a̍h是羅馬字）
    Given 4.Nā詞庫內底有「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 4.輸入無完整ê拼音字母「<phengim_sujip>」。
     Then 4.候選詞內底bē出現字詞「<jisu>」。

    Examples: 試驗範例
     | jisu | phengim_with_space | phengim_sujip |
     | Pe̍h-ōe-jī | peh8 oe7 ji7 | peoeji |
     | 白話字 | peh8 oe7 ji7 | peoeji |


  Scenario Outline: 5.預設詞頻選字
    Given 5.Nā詞庫內底有「<jisu1>」、「<jisu2>」chit 2-ê字詞，拼音kāng款是「<phengim_with_space>」，而且<jisu1> 預設ê詞頻khah koân。
     When 5.輸入完整ê拼音字母（無空白）。
     Then 5.候選詞內底ē先出現字詞「<jisu1>」。

    Examples: 試驗範例
     | jisu1 | jisu2 | phengim_with_space |
     | 你 | 理 | li2 |
     | 駛車 | 屎車 | sai2 chhia1 |


  Scenario Outline: 6.使用者詞頻選字
    Given 6.Nā詞庫內底有「<jisu1>」、「<jisu2>」chit 2-ê字詞，拼音kāng款是「<phengim_with_space>」，而且<jisu1> 使用者ê詞頻khah koân。
     When 6.輸入完整ê拼音字母（無空白）。
     Then 6.候選詞內底ē先出現字詞「<jisu1>」。

    Examples: 試驗範例
     | jisu1 | jisu2 | phengim_with_space |
     | 你 | 理 | li2 |
     | 駛車 | 屎車 | sai2 chhia1 |


  Scenario Outline: 7.詞組選字
    Given 7.Nā詞庫內底有「<jisu1>」、「<jisu2>」chit 2-ê字詞，拼音是「<phengim1_with_space>」、「<phengim2_with_space>」，而且無「<jisu1><jisu2>」chit-ê詞。
     When 7.輸入2-ê字詞chiap做伙完整ê拼音字母（無空白）。
     Then 7.候選詞內底有機會出現「<jisu1><jisu2>」chit-ê詞組。

    Examples: 試驗範例
     | jisu1 | jisu2 | phengim1_with_space | phengim2_with_space |
     | 你 | 好 | li2 | ho2 |
     | 講 | 台語 | kong2 | tai5 gi2 |


  Scenario Outline: 8.任何拼音羅馬字
    Given 8.Nā詞庫內底無「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 8.輸入完整ê拼音字母（無空白）。
     Then 8.候選詞內底ē出現「<jisu>」chit-ê詞。

    Examples: 試驗範例
     | jisu1 | jisu2 | phengim1_with_space | phengim2_with_space |
     | 你 | 好 | li2 | ho2 |
     | 講 | 台語 | kong2 | tai5 gi2 |


  Scenario Outline: 9.羅馬字頭字大寫輸入
    Given 9.Nā beh輸入「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 9.輸入音節完整ê拼音字母（無空白），而且頭1-ê字母大寫，m̄-koh無全部大寫。
     Then 9.候選詞內底ē出現頭字大寫ê「<jisu>」chit-ê詞。

    Examples: 試驗範例
     | jisu | phengim_with_space |
     | lí | li2 |
     | ko-hiông | ko1 hiong5 |


  Scenario Outline: 10.羅馬字全部大寫輸入
    Given 10.Nā beh輸入「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 10.輸入音節完整ê拼音字母（無空白），而且全部大寫。
     Then 10.候選詞內底ē出現全部大寫ê「<jisu>」chit-ê詞。

    Examples: 試驗範例
     | jisu | phengim_with_space |
     | lí | li2 |
     | ko-hiông | ko1 hiong5 |
