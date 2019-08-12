from behave import *
import RimeApiConfig
import RimeApiConsole


@given('13.Nā beh輸入「{jisu}」chit-ê字詞，拼音是「{phengim_with_space}」，拼音內底ê字母有出現是「oa」a̍h是「oe」。')
def step_impl(context, jisu, phengim_with_space):
    dict_word_lines = []
    dict_word_lines.append(jisu + "\t" + phengim_with_space + "\n")
    RimeApiConfig.prepare_dict_file_for_bdd(dict_word_lines)

    context.phengim_with_space = phengim_with_space
    found_word = RimeApiConfig.dict_contains_word(jisu, phengim_with_space)
    assert found_word is not False


@when('13.輸入錯誤ê拼音字母（無空白），kā「oa」寫做「ua」、a̍h是kā「oe」寫做「ue」。')
def step_impl(context):
    phengim_sujip = context.phengim_with_space.replace(" ", "").replace("oa", "ua").replace("Oa", "Ua").replace("OA", "UA").replace("oe", "ue").replace("Oe", "Ue").replace("OE", "UE")
    context.out = RimeApiConsole.call(phengim_sujip)
    pass


@then('13.候選詞內底mā ē出現正確ê「{jisu}」chit-ê詞。')
def step_impl(context, jisu):
    found_jisu = RimeApiConsole.output_exists_candidate(context.out, jisu)
    if found_jisu:
        pass
    else:
        raise AssertionError('無出現 {} tī \n{}'.format(jisu, context.out))
