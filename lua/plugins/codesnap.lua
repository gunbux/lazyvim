return {
    "mistricky/codesnap.nvim",
    build = "make",
    keys = {
        { "<leader>ss", "<Esc><cmd>CodeSnapSave<cr>", mode = 'x', desc = "Take code snapshot" },
        { "<leader>sa", "<Esc><cmd>CodeSnapASCII<cr>", mode = 'x', desc = "Take code snapshot, but in ASCII" },
    },
    opts = {
        has_line_number = true,
        has_breadcrumbs = true,
        watermark = "",
        save_path = "/mnt/d/Pictures/Snips"
    },
}
