from behave import *
import RimeApiConfig
import RimeApiConsole


@given('02.Nā詞庫內底有「{jisu}」chit-ê字詞，拼音是「{phengim_with_space}」。')
def step_impl(context, jisu, phengim_with_space):
    dict_word_lines = []
    dict_word_lines.append(jisu + "\t" +phengim_with_space + "\n")
    RimeApiConfig.prepare_dict_file_for_bdd(dict_word_lines)

    context.phengim_with_space = phengim_with_space
    found_word = RimeApiConfig.dict_contains_word(jisu, phengim_with_space)
    assert found_word is not False


@when('02.輸入完整拼音字母（無空白），nā第1、4聲免phah數字。')
def step_impl(context):
    phengim_sujip = context.phengim_with_space.replace(" ", "").replace("1", "").replace("4", "")
    context.out = RimeApiConsole.call(phengim_sujip)
    pass


@then('02.候選詞內底ē出現字詞「{jisu}」。')
def step_impl(context, jisu):
    found_jisu = RimeApiConsole.output_exists_candidate(context.out, jisu)
    if found_jisu:
        pass
    else:
        raise AssertionError('無出現 {} tī \n{}'.format(jisu, context.out))
