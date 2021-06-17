# oc-qa-transifex
Check qualitiy of transifex translations. We have two German locales, `de`
and `de_DE` -- which we have to keep in sync. The strings are mostly identical
in both locales, except where the user is directly addressed.

The `de` locale addresses the user with an informal 'du' -- think community.  
The `de_DE` locale uses the formal `Sie` to address the user -- think enterprise. 

The transifex web UI does not offer any support for keeping two locales in sync. It is up to the translators
to switch between the two locales and copy/paste from one to the other (with an occasonal edit).

This tool should make the process easier, by comparing all strings from both locales.

* It warns when finding 'Sie' and 'du' in the wrong locale.
* It sugests to copy over a string that was only translated in one locale.

## Usage

If you don't have a ~/.transifexrc, you'll be prompted for an API token, when `tx pull` runs for the first time.
Your API token can be generated (and viewed once) at https://www.transifex.com/user/settings/api/

```
apt install transifex-client
bash RUN.sh
```




