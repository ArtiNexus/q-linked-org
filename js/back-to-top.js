// 回到顶部功能
function initBackToTop() {
    // 创建回到顶部按钮
    const backToTopBtn = document.createElement('button');
    backToTopBtn.id = 'back-to-top';
    backToTopBtn.className = 'back-to-top-btn';
    backToTopBtn.innerHTML = '<i class="fa-solid fa-arrow-up"></i>';
    backToTopBtn.setAttribute('aria-label', '回到顶部');
    backToTopBtn.setAttribute('title', '回到顶部');
    
    // 添加到页面底部
    document.body.appendChild(backToTopBtn);
    
    // 监听滚动事件
    window.addEventListener('scroll', toggleBackToTopButton);
    
    // 点击事件
    backToTopBtn.addEventListener('click', scrollToTop);
    
    // 初始状态检查
    toggleBackToTopButton();
}

function toggleBackToTopButton() {
    const backToTopBtn = document.getElementById('back-to-top');
    if (window.scrollY > 300) {
        backToTopBtn.classList.add('show');
    } else {
        backToTopBtn.classList.remove('show');
    }
}

function scrollToTop() {
    window.scrollTo({
        top: 0,
        behavior: 'smooth'
    });
}

// 页面加载完成后初始化
document.addEventListener('DOMContentLoaded', initBackToTop);