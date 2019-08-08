from behave import *
import RimeApiConfig
import RimeApiConsole


@given('12.Nā beh輸入「{jisu}」chit-ê字詞，拼音是「{phengim_with_space}」。')
def step_impl(context, jisu, phengim_with_space):
    context.phengim_with_space = phengim_with_space
    raise AssertionError("Not yet implemented.")


@when('12.輸入音節完整ê拼音字母（無空白），而且全部大寫。')
def step_impl(context):
    raise AssertionError("Not yet implemented.")


@then('12.候選詞內底ē出現全部大寫ê「{jisu}」chit-ê詞。')
def step_impl(context, jisu):
    raise AssertionError("Not yet implemented.")
