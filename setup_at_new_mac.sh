#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

files=(
  ".claude/settings.json"
  ".claude/CLAUDE.md"
  ".gitignore_global"
  ".vimrc"
  ".zshrc"
)

for rel_path in "${files[@]}"; do
  src="${repo_root}/${rel_path}"
  dest="${HOME}/${rel_path}"

  if [[ ! -e "${src}" ]]; then
    printf 'Missing source: %s\n' "${src}" >&2
    continue
  fi

  mkdir -p "$(dirname "${dest}")"

  if [[ -L "${dest}" ]]; then
    current_target="$(readlink "${dest}")"
    if [[ "${current_target}" == "${src}" ]]; then
      printf 'Already linked: %s -> %s\n' "${dest}" "${src}"
      continue
    fi
  elif [[ -e "${dest}" ]]; then
    printf 'Skip existing file (not a symlink): %s\n' "${dest}" >&2
    continue
  fi

  ln -sfn "${src}" "${dest}"
  printf 'Linked %s -> %s\n' "${dest}" "${src}"
done

# Create ~/.vim/tmp directory
# .vimrcでスワップファイルを作成するディレクトリとして指定しているため作成しておく
mkdir -p ~/.vim/tmp
printf 'Created directory: ~/.vim/tmp\n'
