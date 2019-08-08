from behave import *
import RimeApiConfig
import RimeApiConsole


@given('10.Nā詞庫內底無「{jisu}」chit-ê字詞，拼音是「{phengim_with_space}」。')
def step_impl(context, jisu, phengim_with_space):
    context.phengim_with_space = phengim_with_space
    raise AssertionError("Not yet implemented.")


@when('10.輸入完整ê拼音字母（無空白）。')
def step_impl(context):
    raise AssertionError("Not yet implemented.")


@then('10.候選詞內底ē出現「{jisu}」chit-ê詞。')
def step_impl(context, jisu):
    raise AssertionError("Not yet implemented.")
