<div class="flex items-center justify-center mt-2">
  <ema:metadata>
    <ema:metadata>
      <span id="notedate" class="mr-2 text-right text-gray-600" title="Note creation date">
        <value var="date" />
      </span>
      <script>
        if (notedate.innerHTML.includes('error')) {
          notedate.innerHTML = ''
        } else {
          try {
            const date = new Date(notedate.innerText);
            if (!isNaN(date.getTime())) {
              notedate.innerHTML = date.toLocaleDateString();
            }
          } catch {}
        }
      </script>
    </ema:metadata>
    <with var="template">
      <a class="text-gray-300 hover:text-${theme}-600 text-sm" title="Edit this page on GitHub"
        href="${value:editBaseUrl}/${ema:note:source-path}">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
            d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z" />
        </svg>
      </a>
    </with>
  </ema:metadata>
</div>
