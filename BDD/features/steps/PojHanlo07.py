from behave import *
import RimeApiConfig
import RimeApiConsole


@given('07.Nā詞庫內底有「{jisu1}」、「{jisu2}」chit 2-ê字詞，拼音kāng款是「{phengim_with_space}」，而且字詞「{jisu1}」預設ê詞頻khah koân。')
def step_impl(context, jisu1, jisu2, phengim_with_space):
    dict_word_lines = []
    dict_word_lines.append(jisu1 + "\t" + phengim_with_space + "\t" + "20%" + "\n")
    dict_word_lines.append(jisu2 + "\t" + phengim_with_space + "\t" + "10%" + "\n")
    RimeApiConfig.prepare_dict_file_for_bdd(dict_word_lines)

    context.phengim_with_space = phengim_with_space
    found_word1 = RimeApiConfig.dict_contains_word(jisu1, phengim_with_space)
    found_word2 = RimeApiConfig.dict_contains_word(jisu2, phengim_with_space)
    assert found_word1 is not False
    assert found_word2 is not False

@when('07.輸入完整ê拼音字母（無空白）。')
def step_impl(context):
    phengim_sujip = context.phengim_with_space.replace(" ", "")
    context.out = RimeApiConsole.call(phengim_sujip)
    pass

@then('07.候選詞內底ē先出現字詞「{jisu1}」，chiah出現「{jisu2}」。')
def step_impl(context, jisu1, jisu2):
    found_first_then_second = RimeApiConsole.output_candidates_fit_orders(context.out, jisu1, jisu2)
    if found_first_then_second:
        pass
    else:
        raise AssertionError('無照順序出現 {}, {} tī \n{}'.format(jisu1, jisu2, context.out))
