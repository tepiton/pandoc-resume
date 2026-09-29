-- file-sizes.lua — append a file size to links that point at built files.
--
-- build.sh sets RESUME_OUTDIR to the output directory. Any relative link
-- whose target exists there gets " (17 KB)" appended after it.

local outdir = os.getenv("RESUME_OUTDIR")

local function file_size(path)
  local f = io.open(path, "rb")
  if not f then
    return nil
  end
  local size = f:seek("end")
  f:close()
  return size
end

local function human(bytes)
  if bytes < 1024 then
    return bytes .. " B"
  end
  return math.ceil(bytes / 1024) .. " KB"
end

function Link(link)
  if not outdir or link.target:match("^%a[%w+.-]*:") or link.target:match("^[/#]") then
    return nil
  end
  local size = file_size(outdir .. "/" .. link.target)
  if not size then
    return nil
  end
  local label = pandoc.Span({ pandoc.Str("(" .. human(size) .. ")") }, { class = "file-size" })
  return { link, pandoc.Space(), label }
end
