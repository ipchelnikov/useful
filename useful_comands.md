**VIM commands**

1. Search and replace (by a pattern)
   
   :%s/foo/bar/g

2. Highlight unwanted spaces

    Search hilight should be enabled for the following commands (:set hlsearch)
    <pre><code>
        Show all tabs:
        /\t
        Show trailing whitespace:
        /\s\+$
        Show trailing whitespace only after some text (ignores blank lines):
        /\S\zs\s\+$
        Show spaces before a tab:
        / \+\ze\t
    </code></pre>

3. How to see the currently loaded shared objects in Linux?
   
   <pre><code>lsof -p pid</code></pre>

4. Print all symbols from a binary file
   
   <pre><code>nm -a lib_name</code></pre>
