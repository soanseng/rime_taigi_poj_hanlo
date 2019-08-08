from behave import *
import RimeApiConfig
import RimeApiConsole


@given('09.Nā詞庫內底有「{jisu1}」、「{jisu2}」chit 2-ê字詞，拼音是「{phengim1_with_space}」、「{phengim2_with_space}」，而且無「{jisu1}{jisu2}」chit-ê詞。')
def step_impl(context, jisu1, jisu2, phengim1_with_space, phengim2_with_space):
    context.phengim1_with_space = phengim1_with_space
    context.phengim2_with_space = phengim2_with_space
    raise AssertionError("Not yet implemented.")

@when('09.輸入2-ê字詞chiap做伙完整ê拼音字母（無空白）。')
def step_impl(context):
    raise AssertionError("Not yet implemented.")

@then('09.候選詞內底有機會出現「{jisu1}{jisu2}」chit-ê詞組。')
def step_impl(context, jisu1, jisu2):
    raise AssertionError("Not yet implemented.")
