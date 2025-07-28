return {
  {
    "danymat/neogen",
    opts = function(_, opts)
      return {
        languages = {
          python = {
            template = {
              annotation_convention = "google_docstrings",
            },
          },
        },
      }
    end,
  },
}
