from behave import *
import RimeApiConfig
import RimeApiConsole


@given('09.Nā詞庫內底有「{jisu1}」、「{jisu2}」chit 2-ê字詞，拼音是「{phengim1_with_space}」、「{phengim2_with_space}」，而且無「{jisu1}{jisu2}」chit-ê詞。')
def step_impl(context, jisu1, jisu2, phengim1_with_space, phengim2_with_space):
    dict_word_lines = []
    dict_word_lines.append(jisu1 + "\t" + phengim1_with_space + "\n")
    dict_word_lines.append(jisu2 + "\t" + phengim2_with_space + "\n")
    RimeApiConfig.prepare_dict_file_for_bdd(dict_word_lines)

    context.phengim1_with_space = phengim1_with_space
    context.phengim2_with_space = phengim2_with_space
    found_word1 = RimeApiConfig.dict_contains_word(jisu1, phengim1_with_space)
    found_word2 = RimeApiConfig.dict_contains_word(jisu2, phengim2_with_space)
    assert found_word1 is not False
    assert found_word2 is not False

@when('09.輸入2-ê字詞chiap做伙完整ê拼音字母（無空白）。')
def step_impl(context):
    phengim_with_space = context.phengim1_with_space + context.phengim2_with_space
    phengim_sujip = phengim_with_space.replace(" ", "")
    context.out = RimeApiConsole.call(phengim_sujip)
    pass

@then('09.候選詞內底有機會出現「{jisu1}{jisu2}」chit-ê詞組。')
def step_impl(context, jisu1, jisu2):
    found_jisu = RimeApiConsole.output_exists_candidate(context.out, jisu1+jisu2)
    if found_jisu:
        pass
    else:
        raise AssertionError('無出現 {} tī \n{}'.format(jisu1 + jisu2, context.out))
