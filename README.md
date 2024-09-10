# English

Step 1: Download [Sandstorm source files](https://github.com/Gmod4phun/sandstorm_source_files) from GitHub.

Step 2: Open `compile.qc` and change every folder paths, just replace `C:\...\...\` part

Step 3: Change weapon type in the paths. In `compile.qc` was used P226. Exaple:
```
"C:\Users\You\Documents\GitHub\sandstorm_source_files\release\weapons\p226\anims\an_1p_226_b_idle.smd"
  To this
"C:\Users\You\Documents\GitHub\sandstorm_source_files\release\weapons\m9\anims\an_1p_m9_b_idle.smd"
```

Step 4: (Optional) Now change materials path, attachments, and bones if you want.

Step 5: Compile and then decompile your model (very strange i know).

Step 6: Add `$include gmod_bones_follow_sandstorm.qci` in the bottom of decompiled qc.

Step 7: Copy lines from `2nd_stage_compile.txt` and place in the bottom of decompiled qc.

Step 8: Compile again.

Done! You can edit the files as you wish. I tried to make everything as universal as possible.
The only reason this works is because many pistols in Insurgency use the same animation.
Be careful and use the files from the **L105_P226** folder as reference.

# Русский

Шаг 1: Загрузите [Sandstorm source files](https://github.com/Gmod4phun/sandstorm_source_files) с GitHub.

Шаг 2: Откройте `compile.qc` и измените пути к каждой папке, просто замените часть `C:\...\...\`

Шаг 3: Измените тип оружия в путях. В `compile.qc` использовался P226. Пример:
```
"C:\Users\You\Documents\GitHub\sandstorm_source_files\release\weapons\p226\anims\an_1p_226_b_idle.smd"
  В это
"C:\Users\You\Documents\GitHub\sandstorm_source_files\release\weapons\m9\anims\an_1p_m9_b_idle.smd"
```
Шаг 4: (Необязательно) Теперь измените путь к материалам, атачменты и кости, если хотите.

Шаг 5: Скомпилируйте, а затем декомпилируйте свою модель (очень странно, я знаю).

Шаг 6: Добавьте `$include gmod_bones_follow_sandstorm.qci` в конец декомпилированного qc.

Шаг 7: Скопируйте строки из `2nd_stage_compile.txt` и поместите в конец декомпилированного qc.

Шаг 8: Скомпилируйте снова.

Готово! Вы можете редактировать файлы по своему усмотрению. Я старался сделать все максимально универсальным.
Единственная причина, по которой это работает, заключается в том, что многие пистолеты в Insurgency используют одну и ту же анимацию.
Будтье внимательны и используйте файлы из папки **L105_P226** как референс.

[![Watch the video](https://youtu.be/TW6Bbpdl_vk?si=zuRBQ3Ddi7C3tpxp)
