import os
import string

from collections import Counter

current_path = os.path.abspath(os.path.dirname(__file__))

resume_path = os.path.join(current_path, 'resume.md')

required_skills = {"excel", "python", "mysql", "statistics"}
desired_skills = {"r", "git", "html", "css", "leaflet"}


def load_file(filepath):
    with open(filepath, "r") as resume_file_handler:
        return resume_file_handler.read().lower().split()


word_list = load_file(resume_path)

resume = set()

for word in word_list:
    resume.add(word.split(',')[0].split('.')[0])
print("A list containing all words in the resume")
print(resume)

punctuation = set(string.punctuation)
resume = resume - punctuation
print("Filtered out all remaining punctuation from the set of words")
print(resume)

print("Matching required skills")
print(resume & required_skills)

print("Matching desired skills")
print(resume & desired_skills)

word_count = {}.fromkeys(word_list, 0)

for word in word_list:
    word_count[word] += 1
print(word_count)

word_counter = Counter(word_list)
print(word_counter)

print("Top 10 Words")
_word_count = [word for word in word_count if word not in string.punctuation]

stop_words = ["and", "with", "using", "##", "working", "in", "to"]
_word_count = [word for word in _word_count if word not in stop_words]

sorted_words = []
for word in sorted(_word_count, key=word_count.get, reverse=True)[:10]:
    print(f"Word: {word:20} Count: {word_count[word]}")
