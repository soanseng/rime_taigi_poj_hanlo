import sys

from behave import *
import subprocess

def subprocess_cmd():
    process = subprocess.Popen(["/librime/build/bin/rime_api_console"],
                               stdin=subprocess.PIPE, stdout=subprocess.PIPE, shell=True,
                               cwd=".")
    (out, err) = process.communicate()
    print(out)

@given('1.Nā詞庫內底有「{jisu}」chit-ê詞，拼音是「{phengim_with_space}」。')
def step_impl(context, jisu, phengim_with_space):
    subprocess_cmd()
    pass

@when('1.輸入完整拼音「{phengim_sujip}」。')
def step_impl(context, phengim_sujip):
    pass

@then('1.候選詞內底ē出現字詞「{jisu}」。')
def step_impl(context, jisu):
    pass

