Feature: Rime白話字漢羅輸入法方案ê候選詞規則

  Scenario Outline: 01.完整拼音選字（Ē-sái選漢字a̍h是羅馬字）
    Given 01.Nā詞庫內底有「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 01.輸入完整拼音字母（無空白）。
     Then 01.候選詞內底ē出現字詞「<jisu>」。

    Examples: 試驗範例
     | jisu | phengim_with_space |
     | Pe̍h-ōe-jī | peh8 oe7 ji7 |
     | 白話字 | peh8 oe7 ji7 |


  Scenario Outline: 02.完整拼音選字，nā第1、4聲免phah數字（Ē-sái選漢字a̍h是羅馬字）
    Given 02.Nā詞庫內底有「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 02.輸入完整拼音字母（無空白），nā第1、4聲免phah數字。
     Then 02.候選詞內底ē出現字詞「<jisu>」。

    Examples: 試驗範例
     | jisu | phengim_with_space |
     | Kong-sī | kong1 si7 |
     | 公視 | kong1 si7 |
     | tha̍k-chheh | thak8 chheh4 |
     | 讀冊 | thak8 chheh4 |

  Scenario Outline: 03.無聲調拼音選字（Ē-sái選漢字a̍h是羅馬字）
    Given 03.Nā詞庫內底有「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 03.輸入無聲調拼音字母（無空白）。
     Then 03.候選詞內底ē出現字詞「<jisu>」。

    Examples: 試驗範例
     | jisu | phengim_with_space |
     | Pe̍h-ōe-jī | peh8 oe7 ji7 |
     | 白話字 | peh8 oe7 ji7 |


  Scenario Outline: 04.頭1-ê拉丁字母選字（Ē-sái選漢字a̍h是羅馬字）
    Given 04.Nā詞庫內底有「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 04.Kan-na輸入拼音頭1-ê拉丁字母。
     Then 04.候選詞內底ē出現字詞「<jisu>」。

    Examples: 試驗範例
     | jisu | phengim_with_space |
     | Pe̍h-ōe-jī | peh8 oe7 ji7 |
     | 白話字 | peh8 oe7 ji7 |
     | cha̍p-chhài-mī | chap8 chhai3 mi7 |
     | 雜菜麵 | chap8 chhai3 mi7 |


  Scenario Outline: 05.頭1-ê台語羅馬字字母選字（Ē-sái選漢字a̍h是羅馬字）
    Given 05.Nā詞庫內底有「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 05.Kan-na輸入拼音頭1-ê台語羅馬字字母。
     Then 05.候選詞內底ē出現字詞「<jisu>」。

    Examples: 試驗範例
     | jisu | phengim_with_space |
     | Pe̍h-ōe-jī | peh8 oe7 ji7 |
     | 白話字 | peh8 oe7 ji7 |
     | cha̍p-chhài-mī | chap8 chhai3 mi7 |
     | 雜菜麵 | chap8 chhai3 mi7 |


  Scenario Outline: 06.拼音字母ài完整chiah thang選字（Ē-sái選漢字a̍h是羅馬字）
    Given 06.Nā詞庫內底有「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 06.輸入無完整ê拼音字母「<phengim_sujip>」。
     Then 06.候選詞內底bē出現字詞「<jisu>」。

    Examples: 試驗範例
     | jisu | phengim_with_space | phengim_sujip |
     | Pe̍h-ōe-jī | peh8 oe7 ji7 | peoeji |
     | 白話字 | peh8 oe7 ji7 | peoeji |


  Scenario Outline: 07.預設詞頻選字
    Given 07.Nā詞庫內底有「<jisu1>」、「<jisu2>」chit 2-ê字詞，拼音kāng款是「<phengim_with_space>」，而且字詞「<jisu1>」預設ê詞頻khah koân。
     When 07.輸入完整ê拼音字母（無空白）。
     Then 07.候選詞內底ē先出現字詞「<jisu1>」，chiah出現「<jisu2>」。

    Examples: 試驗範例
     | jisu1 | jisu2 | phengim_with_space |
     | 你 | 理 | li2 |
     | 駛車 | 屎車 | sai2 chhia1 |


  Scenario Outline: 08.使用者詞頻選字
    Given 08.Nā詞庫內底有「<jisu1>」、「<jisu2>」chit 2-ê字詞，拼音kāng款是「<phengim_with_space>」，而且<jisu1> 使用者ê詞頻khah koân。
     When 08.輸入完整ê拼音字母（無空白）。
     Then 08.候選詞內底ē先出現字詞「<jisu1>」。

    Examples: 試驗範例
     | jisu1 | jisu2 | phengim_with_space |
     | 你 | 理 | li2 |
     | 駛車 | 屎車 | sai2 chhia1 |


  Scenario Outline: 09.詞組選字
    Given 09.Nā詞庫內底有「<jisu1>」、「<jisu2>」chit 2-ê字詞，拼音是「<phengim1_with_space>」、「<phengim2_with_space>」，而且無「<jisu1><jisu2>」chit-ê詞。
     When 09.輸入2-ê字詞chiap做伙完整ê拼音字母（無空白）。
     Then 09.候選詞內底有機會出現「<jisu1><jisu2>」chit-ê詞組。

    Examples: 試驗範例
     | jisu1 | jisu2 | phengim1_with_space | phengim2_with_space |
     | 你 | 好 | li2 | ho2 |
     | 講 | 台語 | kong2 | tai5 gi2 |


  Scenario Outline: 10.任何拼音羅馬字（無tī字表內底mā ē-sái phah羅馬字）
    Given 10.Nā詞庫內底無「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 10.輸入完整ê拼音字母（無空白）。
     Then 10.候選詞內底ē出現「<jisu>」chit-ê詞。

    Examples: 試驗範例
     | jisu | phengim_with_space |
     | góa | goa2 |
     | 台語 | tai5 gi2 |


  Scenario Outline: 11.羅馬字頭字大寫輸入
    Given 11.Nā beh輸入「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 11.輸入音節完整ê拼音字母（無空白），而且頭1-ê字母大寫，m̄-koh無全部大寫。
     Then 11.候選詞內底ē出現頭字大寫ê「<jisu>」chit-ê詞。

    Examples: 試驗範例
     | jisu | phengim_with_space |
     | lí | li2 |
     | ko-hiông | ko1 hiong5 |


  Scenario Outline: 12.羅馬字全部大寫輸入
    Given 12.Nā beh輸入「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 12.輸入音節完整ê拼音字母（無空白），而且全部大寫。
     Then 12.候選詞內底ē出現全部大寫ê「<jisu>」chit-ê詞。

    Examples: 試驗範例
     | jisu | phengim_with_space |
     | lí | li2 |
     | ko-hiông | ko1 hiong5 |
