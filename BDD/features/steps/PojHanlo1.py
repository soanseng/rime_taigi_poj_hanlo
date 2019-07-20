import sys

from behave import *
import subprocess

@given('1.Nā詞庫內底有「{jisu}」chit-ê詞，拼音是「{phengim_with_space}」。')
def step_impl(context, jisu, phengim_with_space):
    # 產生一ê表kā dict.yaml換掉
    pass

@when('1.輸入完整拼音「{phengim_sujip}」。')
def step_impl(context, phengim_sujip):
    context.process = subprocess.Popen(
        ["/librime/build/bin/rime_api_console"],
        stdin=subprocess.PIPE, stdout=subprocess.PIPE,
	encoding='utf-8',
        cwd="."
    )
    (context.out, _err) = context.process.communicate(phengim_sujip)

@then('1.候選詞內底ē出現字詞「{jisu}」。')
def step_impl(context, jisu):
    if jisu not in context.out:
        raise AssertionError('Bo chhut-hian {} ti {}'.format(jisu, context.out))

