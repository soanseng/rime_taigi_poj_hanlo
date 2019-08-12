from behave import *
import RimeApiConfig
import RimeApiConsole


@given('15.Nā beh輸入「{jisu}」chit-ê字詞，拼音是「{phengim_with_space}」，拼音內底ê字母有出現是「eng」a̍h是「ek」。')
def step_impl(context, jisu, phengim_with_space):
    dict_word_lines = []
    dict_word_lines.append(jisu + "\t" + phengim_with_space + "\n")
    RimeApiConfig.prepare_dict_file_for_bdd(dict_word_lines)

    context.phengim_with_space = phengim_with_space
    found_word = RimeApiConfig.dict_contains_word(jisu, phengim_with_space)
    assert found_word is not False


@when('15.輸入教育部羅馬字ê拼音字母（無空白），kā白話字「eng」寫做教育部羅馬字「ing」、a̍h是kā白話字「ek」寫做教育部羅馬字「ik」。')
def step_impl(context):
    phengim_sujip = context.phengim_with_space.replace(" ", "").replace("eng", "ing").replace("Eng", "Ing").replace("ENG", "ING").replace("ek", "ik").replace("Ek", "Ik").replace("EK", "IK")
    context.out = RimeApiConsole.call(phengim_sujip)
    pass


@then('15.候選詞內底mā ē出現正確ê「{jisu}」chit-ê詞。')
def step_impl(context, jisu):
    found_jisu = RimeApiConsole.output_exists_candidate(context.out, jisu)
    if found_jisu:
        pass
    else:
        raise AssertionError('無出現 {} tī \n{}'.format(jisu, context.out))
