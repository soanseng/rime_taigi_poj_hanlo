from behave import *
import RimeApiConfig
import RimeApiConsole


@given('5.Nā詞庫內底有「{jisu1}」、「{jisu2}」chit 2-ê字詞，拼音kāng款是「{phengim_with_space}」，而且{jisu1} 預設ê詞頻khah koân。')
def step_impl(context, jisu1, jisu2, phengim_with_space):
    context.phengim_with_space = phengim_with_space
    raise AssertionError("Not yet implemented.")

@when('5.輸入完整ê拼音字母（無空白）。')
def step_impl(context):
    raise AssertionError("Not yet implemented.")

@then('5.候選詞內底ē先出現字詞「{jisu1}」。')
def step_impl(context, jisu1):
    raise AssertionError("Not yet implemented.")
