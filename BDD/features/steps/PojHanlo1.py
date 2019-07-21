from behave import *
import RimeApiConfig
import RimeApiConsole


@given('1.Nā詞庫內底有「{jisu}」chit-ê詞，拼音是「{phengim_with_space}」。')
def step_impl(context, jisu, phengim_with_space):
    found_word = RimeApiConfig.dict_contains_word(jisu, phengim_with_space)
    assert found_word is not False


@when('1.輸入完整拼音「{phengim_sujip}」。')
def step_impl(context, phengim_sujip):
    context.out = RimeApiConsole.call(phengim_sujip)
    pass


@then('1.候選詞內底ē出現字詞「{jisu}」。')
def step_impl(context, jisu):
    found_jisu = RimeApiConsole.output_exists_candidate(context.out, jisu)
    if found_jisu:
        pass
    else:
        raise AssertionError('無出現 {} tī {}'.format(jisu, context.out))
